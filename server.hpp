#ifndef SERVER_HPP
# define SERVER_HPP
# include "webserv.hpp"
# include <vector>
# include <map>
# include <stdexcept>

class server {
public:
	typedef void	(server::*setter)(std::string&);

	class	inputErrorException : public std::exception {
	public:
		virtual const char*	what() const throw();
	};

private:
	int								_portNr;
	size_t							_maxBodySize;
	bool							_autoindex;
	std::string						_root;
	std::string						_errorPage;
	std::string						_host;
	std::vector<std::string>		_serverNames;
	std::vector<std::string>		_indices;
	std::map<std::string, setter>	_typeFunctionMap;
	// vector filled with locations;
public:
	server();
	server(server const &original);
	~server();
	server&	operator=(server const &original);

	void	setPort(std::string &portNr);
	void	setMaxBodySize(std::string &size);
	void	setAutoindex(std::string &autoindex);
	void	setRoot(std::string &root);
	void	setErrorPage(std::string &page);
	void	setHost(std::string &host);
	void	setServerNames(std::string &names);
	void	setIndices(std::string &indices);

	int							getPortNr() const;
	size_t						getMaxBodySize() const;
	bool						getAutoindex() const;
	std::string					getRoot() const;
	std::string					getErrorPage() const;
	std::string					getHost() const;
	std::vector<std::string>	getServerNames() const;
	std::vector<std::string>	getIndices() const;

	bool	valueCheck() const;

	void	findValue(std::string &key, std::string line);
};


#endif //WEBSERV_SERVER_HPP
