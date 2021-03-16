#include <map>
#include "server.hpp"
#include <string>
#include <sstream>
#include <iostream>
#include <unistd.h>
#include <sys/socket.h>
#include <fcntl.h>
#include <cstring>
#include "../Utils/utils.hpp"
#include "../Request/request.hpp"
#include "../Response/Response.hpp"

void	server::startListening()
{
	this->_socketFd = socket(PF_INET, SOCK_STREAM, 0);
	if (this->_socketFd < 0)
	{
		std::cerr << "socket error" << std::endl;
		throw server::syscallErrorException();
	}
	bzero(&this->_addr, sizeof(this->_addr));
	this->_addr.sin_family = AF_INET;
	this->_addr.sin_port = htons(this->_portNr);
	// do something with host
	this->_addr.sin_addr.s_addr = htonl(INADDR_ANY); // this can be the IP address

//	 clear port if it is in use
	int	ret;
	int options = 1;
	ret = setsockopt(this->_socketFd, SOL_SOCKET, SO_REUSEADDR, &options, sizeof(options));
	if (ret < 0)
	{
		std::cerr << "setsockopt error" << std::endl;
		throw server::syscallErrorException();
	}

	ret = bind(this->_socketFd, (sockaddr*)&(this->_addr), sizeof(this->_addr));
	if (ret < 0)
	{
		std::cerr << "bind error: possibly you have multiple servers listening on the same socket" << std::endl;
		throw server::syscallErrorException();
	}
	ret = listen(this->_socketFd, NR_OF_CONNECTIONS);
	if (ret < 0)
	{
		std::cerr << "listen error" << std::endl;
		throw server::syscallErrorException();
	}
}

void 	server::acpt()
{
	struct sockaddr connectingAddr;
	socklen_t		addressLen;
	int				i;

	for (i = 0; i < NR_OF_CONNECTIONS; i++)
	{
		if (this->connections[i].getAcceptFd() == -1)
			break;
	}
	if (i == NR_OF_CONNECTIONS)
	{ ; } // too many connections, should never happen
	this->connections[i].setFd(accept(this->_socketFd, &connectingAddr, &addressLen));
	if (this->connections[i].getAcceptFd() == -1)
		std::cerr << "Could not create fd" << std::endl;
	this->connections[i].setTimeLastRead(getTime());
//	this->_acceptFds.push_back((accept(this->_socketFd, &connectingAddr, &addressLen)));
//	if (*this->_acceptFds.rbegin() == -1)
//		std::cerr << "Could not create fd" << std::ençdl; // dit zometeen aanpassen naar try catch
	//	fcntl(this->_acceptFd, F_SETFL, O_NONBLOCK);
}

void server::generateResponse(int index)
{
	if (!this->connections[index].getResponseString().empty())
		return;
	std::cout << "==REQUEST==" << std::endl;
	int len = std::min(connections[index].getBuffer().length(), (size_t)500);
	if (write(1, connections[index].getBuffer().c_str(), len) == -1) {;}
	std::cout << "==end==" << std::endl;
	Request	request(connections[index].getBuffer());
	Response resp(request, *this);
	resp.setupResponse(request, *this);
	this->_bodylen = resp.getBodySize();
	this->connections[index].setResponseString(resp.getResponse());
	std::cout << "==RESPONSE==" << std::endl;
	int len1 = std::min(this->connections[index].getResponseString().length(), (size_t)500);
	if (write(1, this->connections[index].getResponseString().c_str(), len1) == -1) {;}
	std::cout << "\n==end==" << std::endl;
}
