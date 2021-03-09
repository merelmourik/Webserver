//
// Created by Thimo Van der meer on 09/02/2021.
//
//#include <AppleEXR.h>
#include <unistd.h>
#include <fcntl.h>
#include <string.h>
#include <fstream>
#include <sys/wait.h>
#include "CGI.hpp"
CGI::CgiError::CgiError(const char* w)
		: std::runtime_error(w)
{
}
CGI::PipeSetupFailed::PipeSetupFailed()
		: CgiError("CGI pipe setup failed")
{
}
CGI::ForkFailed::ForkFailed()
		: CgiError("CGI fork failed")
{
}
// default stuff
CGI::CGI(std::string &path, Request &request, server &server) :
		_path(path)
{
	_initEnvironment(request, server);
}
CGI::CGI()
{
}
CGI::CGI(CGI &src)
{
	if (this != &src)
		this->_environment = src._environment;
	return ;
}
CGI::~CGI()
{
	;
}
// public stuff

std::string CGI::executeGCI(std::string &body)
{
	_convertEnv();
	std::cerr << _path << std::endl;
//	pipe(fd);
	int fileIn = open("/tmp/fuckyoupeerin.txt", O_CREAT | O_TRUNC | O_RDWR, S_IRWXU);
	// write some shit for input
	int asdf = write(fileIn, body.c_str(), body.length());
	if (asdf == -1){;}
	int fileOut;
	_pid = fork();
	if (_pid == 0)
	{
		fileOut  = open("/tmp/fuckyoupeerout.txt", O_CREAT | O_TRUNC | O_RDWR, S_IRWXU);
		dup2(fileOut, STDOUT_FILENO);
		close(fileOut);
		fileIn = open("/tmp/fuckyoupeerin.txt", O_RDONLY, S_IRWXU);
		dup2(fileIn, STDIN_FILENO);
		close(fileIn);
		long executableStart = _path.rfind('/') + 1;
		std::string executable = _path.substr(executableStart);
		const char *realArgv[2];
		std::string pathStart = _path.substr(0, executableStart);
		if (chdir(pathStart.c_str()) == -1)
			{;}
		realArgv[0] = executable.c_str();
		realArgv[1] = NULL;
		char *const *argv = const_cast<char *const *>(realArgv);
		int ret = execve(argv[0], reinterpret_cast<char* const*>(argv), _env);
		if (ret < 0)
			exit(1);
	}
//	fileOut = open("/tmp/fuckyoupeerout.txt", O_RDONLY, S_IRWXU);
	std::string ret;
	int status;
	waitpid(0, &status, 0);
	std::ifstream file;
	file.open("/tmp/fuckyoupeerout.txt", std::ifstream::in);
	ret.assign((std::istreambuf_iterator<char>(file)), std::istreambuf_iterator<char>());
	file.close();
	return ret;
}
void CGI::_initEnvironment(Request &request, server &server)
{
	std::map<headerType, std::string> reqHeaders = request.getHeaders();
	if (reqHeaders.find(AUTHORIZATION) != reqHeaders.end())
		this->_environment["AUTH_TYPE"] = reqHeaders[AUTHORIZATION];
	this->_environment["CONTENT_LENGTH"] = request.getBody().length();
	if (request.getBody().empty())
		this->_environment["CONTENT_TYPE"] = "";
	else
		this->_environment["CONTENT_TYPE"] = request.getMethod();
	this->_environment["GATEWAY_INTERFACE"] = "EPIC CGI"; // search app
	this->_environment["PATH_INFO"] = request.getUri() + request.getCgiEnv(); // SEARCH APP
	this->_environment["PATH_TRANSLATED"] = request.getUri(); // SEARCH APP
	this->_environment["QUERY_STRING"] = request.getCgiEnv(); // SEARCH APP
	this->_environment["REMOTE_ADDR"] = server.getHost(); // SEARCH APP
	this->_environment["REMOTE_IDENT"] = "Hello this is bullshit so we did not implement this";
	this->_environment["REMOTE_USER"] = "The same as above counts for this"; // SEARCH APP
	this->_environment["REQUEST_METHOD"] = request.getMethod(); // SEARCH APP
	this->_environment["REQUEST_URI"] = request.getUri(); // search app
	this->_environment["SCRIPT_NAME"] = request.getUri(); // search app
	if (reqHeaders.find(HOST) != reqHeaders.end())
		this->_environment["SERVER_NAME"] = reqHeaders[HOST];
	else
		this->_environment["SERVER_NAME"] = this->_environment["REMOTE_ADDR"];
	this->_environment["SERVER_PORT"] = server.getPortNr(); // search app
	this->_environment["SERVER_PROTOCOL"] = "HTTP/1.1"; // search app
	this->_environment["SERVER_SOFTWARE"] = "Merel Jonas Thimo Epic webserver huts"; // search app
}
void CGI::_convertEnv()
{
	this->_env = new char*[this->_environment.size() + 1];
	if (!_env)
	{
		delete[] _env;
		return ;
	}
	int j = 0;
	std::map<std::string, std::string>::const_iterator it = this->_environment.begin();
	while(it != this->_environment.end())
	{
		std::string temp = it->first + "=" + it->second;
		this->_env[j] = strdup(temp.c_str());
		if (!this->_env[j])
		{
			std::cout << "ERRORRR" << std::endl;
			return ;
		}
		it++;
		j++;
	}
	_env[j] = NULL;
}