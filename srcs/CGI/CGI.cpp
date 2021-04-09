#include "CGI.hpp"

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

CGI::~CGI() {
    _environment.clear();
}

std::string CGI::executeGCI(std::string &body)
{
	_convertEnv();
	int fileIn;
	int status;
    int fileOut;
    int asdf;
    int fd;
    long executableStart;

    if(!(fileIn = open("/tmp/fuckyoupeerin.txt", O_CREAT | O_TRUNC | O_RDWR, S_IRWXU)))
        exit(1);
    asdf = write(fileIn, body.c_str(), body.length());
    if (close(fileIn) == -1)
        exit(1);
    if (asdf == -1)
        exit(1);
    if (!(_pid = fork()))
        exit(1);
    if (_pid == 0)
	{
		if (!(fileOut  = open("/tmp/fuckyoupeerout.txt", O_CREAT | O_TRUNC | O_RDWR, S_IRWXU)))
            exit(1);
        if (!(dup2(fileOut, STDOUT_FILENO)))
            exit(1);
        if (close(fileOut) == -1)
            exit(1);
		if (!(fileIn = open("/tmp/fuckyoupeerin.txt", O_RDONLY, S_IRWXU)))
            exit(1);
        if(!(dup2(fileIn, STDIN_FILENO)))
        {
            close(fileIn);
            exit(1);
        }
        close(fileIn);
		executableStart = _path.rfind('/') + 1;
		std::string executable = _path.substr(executableStart);
		std::string pathStart = _path.substr(0, executableStart);
		if (chdir(pathStart.c_str()) == -1)
			    exit(1);
		const char *realArgv[2];
		realArgv[0] = executable.c_str();
		realArgv[1] = NULL;
		char *const *argv = const_cast<char *const *>(realArgv);
		int ret = execve(argv[0], reinterpret_cast<char* const*>(argv), _env);
		if (ret < 0)
        {
            free_array(_env);
            exit(1);
        }
    }
	std::string ret;
	if(!(waitpid(0, &status, 0)))
	    exit(1);
	free_array(_env);
	if(!(fd = open("/tmp/fuckyoupeerout.txt", O_RDONLY)))
        exit(1);
	char buff[MB];
	int readret = 1;
	while (readret)
	{
		bzero(buff, MB);
		if ((readret = read(fd, buff, MB - 1)) == -1)
            exit(1);
        ret += buff;
	}
	if(close(fd) == -1)
        exit(1);
    return ret;
}

void CGI::_initEnvironment(Request &request, server &server)
{
    std::stringstream ss;
	std::map<std::string, std::string> cgiHeaders = request.getCgiHeaders();
	std::map<std::string, std::string>::iterator it = cgiHeaders.begin();
	std::map<std::string, std::string> reqHeaders = request.getHeaders();

	if (reqHeaders.find("AUTHORIZATION") != reqHeaders.end())
		this->_environment["AUTH_TYPE"] = reqHeaders["AUTHORIZATION"];
	ss << request.getBody().length();
	this->_environment["CONTENT-LENGTH"] = ss.str();
	ss.clear();
	if (request.getBody().empty())
		this->_environment["CONTENT-TYPE"] = "";
	else
		this->_environment["CONTENT-TYPE"] = request.getMethod();
	this->_environment["GATEWAY_INTERFACE"] = "EPIC CGI";
	this->_environment["PATH_INFO"] = request.getUri() + request.getCgiEnv();
	this->_environment["PATH_TRANSLATED"] = request.getUri();
	this->_environment["QUERY_STRING"] = request.getCgiEnv();
	this->_environment["REMOTE_ADDR"] = server.getHost();
	this->_environment["REMOTE_IDENT"] = "Hello this is bullshit so we did not implement this";
	this->_environment["REMOTE_USER"] = "The same as above counts for this";
	this->_environment["REQUEST_METHOD"] = request.getMethod();
	this->_environment["REQUEST_URI"] = request.getUri();
	this->_environment["SCRIPT_NAME"] = request.getUri();
	if (reqHeaders.find("HOST") != reqHeaders.end())
		this->_environment["SERVER_NAME"] = reqHeaders["HOST"];
	else
		this->_environment["SERVER_NAME"] = this->_environment["REMOTE_ADDR"];
	ss << server.getPortNr();
	this->_environment["SERVER_PORT"] = ss.str();
	ss.clear();
	this->_environment["SERVER_PROTOCOL"] = "HTTP/1.1";
	this->_environment["SERVER_SOFTWARE"] = "Merel Jonas Thimo Epic webserver huts";
    while (it != cgiHeaders.end()) {
        _environment.insert(std::make_pair(it->first, it->second));
        it++;
    }
}

void CGI::_convertEnv()
{
	std::map<std::string, std::string>::const_iterator it = this->_environment.begin();

	this->_env = new char*[this->_environment.size() + 1];
	if (!_env)
		return ;
	int j = 0;
	while(it != this->_environment.end())
	{
		std::string temp = it->first + "=" + it->second;
		this->_env[j] = strdup(temp.c_str());
		if (!this->_env[j])
			exit(1);
		it++;
		j++;
	}
	_env[j] = NULL;
}
