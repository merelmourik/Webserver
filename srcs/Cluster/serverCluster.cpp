#include "serverCluster.hpp"
#include <sys/select.h>
#include "../Request/request.hpp"
#include "../Utils/utils.hpp"
#include <string.h>

serverCluster::serverCluster() : _nrOfServers(0)
{
	FD_ZERO(&this->readFds);
	FD_ZERO(&this->writeFds);
}

serverCluster::serverCluster(const serverCluster &original)
{
	*this = original;
}

serverCluster::~serverCluster()
{
	std::vector<server*>::iterator it;
	it = this->_servers.begin();
	while (!this->_servers.empty() && it != this->_servers.end())
	{
		delete (*it);
		it++;
	}
}

serverCluster	&serverCluster::operator=(const serverCluster &original)
{
	this->_servers = original._servers;
	this->_nrOfServers = original._nrOfServers;
	return (*this);
}

void	serverCluster::addServer(server *newServ)
{
	this->_servers.push_back(newServ);
}

bool	serverCluster::isEmpty() const
{
	return (this->_servers.empty());
}

void	serverCluster::startup()
{
	std::vector<server*>::iterator it = this->_servers.begin();
	while (!this->_servers.empty() && it != this->_servers.end())
	{
		(*it)->startListening();
		FD_SET((*it)->getSocketFd(), &this->readFds);
		this->_nrOfServers++;
		it++;
	}
}

void	serverCluster::startListening()
{
	while (true)
	{
		fd_set			readSet;
		fd_set			writeSet;
		int 			ret;
		std::vector<server*>::iterator it = this->_servers.begin();

		FD_ZERO(&writeSet);
		FD_ZERO(&readSet);
		memcpy(&readSet, &this->readFds, sizeof (this->readFds));
//		FD_SET(0, &readSet); // adding stdin to readfds
		while (it != this->_servers.end())
		{
			for (int i = 0; i < NR_OF_CONNECTIONS; i++)
			{
				if ((*it)->connections[i].getAcceptFd() != -1)
				{
					unsigned long a = getTime();
					unsigned long b = (*it)->connections[i].getTimeLastRead();
					if (a - b > TIMEOUT && (*it)->connections[i].getResponseString().empty())
					{
						std::cerr << "connection timed out: nothing received on socket" << std::endl;
						(*it)->generateResponse(i);
						(*it)->connections[i].setFullReq(true);
					}
					if (!(*it)->connections[i].hasFullRequest())
						FD_SET((*it)->connections->getAcceptFd(), &readSet);
					else
						FD_SET((*it)->connections[i].getAcceptFd(), &writeSet);
				}
			}
			it++;
		}
//		std::cout << "waiting for connection.." << std::endl;
		struct timeval timeout;
		timeout.tv_sec = 1;
		timeout.tv_usec = 0;
		ret = select(this->_nrOfServers * (NR_OF_CONNECTIONS + 1), &readSet, &writeSet, NULL, &timeout);
//		if (FD_ISSET(0, &readSet)) //input from stdin
//		{
//			std::string	line;
//			std::getline(std::cin, line);
//			if (line == "exit")
//			{
//				std::cout << "exiting..." << std::endl;
//				exit(0);
//			}
//			else
//				std::cout << "unknown input" << std::endl;
//		}
//		if (ret > 0)
//			std::cout << "Houston we have contact" << std::endl;

		it = this->_servers.begin();
		while (it != this->_servers.end() && ret) // gebeurt per server
		{
			long fd = (*it)->getSocketFd(); // check of nieuwe verbinding op socket
			if (readSet.fds_bits[fd / 64] & (long)(1UL << fd % 64))
			{
				(*it)->acpt();
				break;
			}
			for (int i = 0; i < NR_OF_CONNECTIONS; i++)
			{
				if ((*it)->connections[i].getAcceptFd() != -1) // er moet van gelezen of naar geschreven worden
				{
					fd = (*it)->connections[i].getAcceptFd();
					if (readSet.fds_bits[fd / 64] & (long)(1UL << fd % 64))
					{
						(*it)->connections[i].startReading(); // start reading
						break;
					}
					if (writeSet.fds_bits[fd / 64] & (long)(1UL << fd % 64))
					{
						(*it)->generateResponse(i);
						(*it)->connections[i].sendData((*it)->_bodylen); // start writing
						break;
					}
				}
			}
			it++;
		}
	}
}
