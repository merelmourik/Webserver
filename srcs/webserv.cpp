//
// Created by Thimo Van der meer on 03/02/2021.
//
#include "../srcs/Cluster/serverCluster.hpp"
#include "../srcs/Request/request.hpp"
#include "../srcs/Response/ResponseHeader.hpp"
#include "../srcs/Response/Response.hpp"
#include "../srcs/Server/server.hpp"
#include "../srcs/Server/location.hpp"
#include "../srcs/webserv.hpp"

void	errMsgAndExit(const std::string &errMsg, int code)
{
	std::cerr << "error: " << errMsg << std::endl;
	if (errno)
		perror(NULL);
	exit(code);
}

int main(int argc, char **argv)
{
		serverCluster cluster;

		openConfig(argc, argv, &cluster);
		cluster.startListening();

}