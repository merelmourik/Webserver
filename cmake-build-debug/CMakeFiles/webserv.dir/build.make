# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/clion/139/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/139/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jonasbb/Documents/Projects/webserv

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jonasbb/Documents/Projects/webserv/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/webserv.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/webserv.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/webserv.dir/flags.make

CMakeFiles/webserv.dir/srcs/CGI/CGI.cpp.o: CMakeFiles/webserv.dir/flags.make
CMakeFiles/webserv.dir/srcs/CGI/CGI.cpp.o: ../srcs/CGI/CGI.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jonasbb/Documents/Projects/webserv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/webserv.dir/srcs/CGI/CGI.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserv.dir/srcs/CGI/CGI.cpp.o -c /home/jonasbb/Documents/Projects/webserv/srcs/CGI/CGI.cpp

CMakeFiles/webserv.dir/srcs/CGI/CGI.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserv.dir/srcs/CGI/CGI.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jonasbb/Documents/Projects/webserv/srcs/CGI/CGI.cpp > CMakeFiles/webserv.dir/srcs/CGI/CGI.cpp.i

CMakeFiles/webserv.dir/srcs/CGI/CGI.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserv.dir/srcs/CGI/CGI.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jonasbb/Documents/Projects/webserv/srcs/CGI/CGI.cpp -o CMakeFiles/webserv.dir/srcs/CGI/CGI.cpp.s

CMakeFiles/webserv.dir/srcs/Cluster/serverCluster.cpp.o: CMakeFiles/webserv.dir/flags.make
CMakeFiles/webserv.dir/srcs/Cluster/serverCluster.cpp.o: ../srcs/Cluster/serverCluster.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jonasbb/Documents/Projects/webserv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/webserv.dir/srcs/Cluster/serverCluster.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserv.dir/srcs/Cluster/serverCluster.cpp.o -c /home/jonasbb/Documents/Projects/webserv/srcs/Cluster/serverCluster.cpp

CMakeFiles/webserv.dir/srcs/Cluster/serverCluster.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserv.dir/srcs/Cluster/serverCluster.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jonasbb/Documents/Projects/webserv/srcs/Cluster/serverCluster.cpp > CMakeFiles/webserv.dir/srcs/Cluster/serverCluster.cpp.i

CMakeFiles/webserv.dir/srcs/Cluster/serverCluster.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserv.dir/srcs/Cluster/serverCluster.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jonasbb/Documents/Projects/webserv/srcs/Cluster/serverCluster.cpp -o CMakeFiles/webserv.dir/srcs/Cluster/serverCluster.cpp.s

CMakeFiles/webserv.dir/srcs/Request/request.cpp.o: CMakeFiles/webserv.dir/flags.make
CMakeFiles/webserv.dir/srcs/Request/request.cpp.o: ../srcs/Request/request.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jonasbb/Documents/Projects/webserv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/webserv.dir/srcs/Request/request.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserv.dir/srcs/Request/request.cpp.o -c /home/jonasbb/Documents/Projects/webserv/srcs/Request/request.cpp

CMakeFiles/webserv.dir/srcs/Request/request.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserv.dir/srcs/Request/request.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jonasbb/Documents/Projects/webserv/srcs/Request/request.cpp > CMakeFiles/webserv.dir/srcs/Request/request.cpp.i

CMakeFiles/webserv.dir/srcs/Request/request.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserv.dir/srcs/Request/request.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jonasbb/Documents/Projects/webserv/srcs/Request/request.cpp -o CMakeFiles/webserv.dir/srcs/Request/request.cpp.s

CMakeFiles/webserv.dir/srcs/Response/getPath.cpp.o: CMakeFiles/webserv.dir/flags.make
CMakeFiles/webserv.dir/srcs/Response/getPath.cpp.o: ../srcs/Response/getPath.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jonasbb/Documents/Projects/webserv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/webserv.dir/srcs/Response/getPath.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserv.dir/srcs/Response/getPath.cpp.o -c /home/jonasbb/Documents/Projects/webserv/srcs/Response/getPath.cpp

CMakeFiles/webserv.dir/srcs/Response/getPath.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserv.dir/srcs/Response/getPath.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jonasbb/Documents/Projects/webserv/srcs/Response/getPath.cpp > CMakeFiles/webserv.dir/srcs/Response/getPath.cpp.i

CMakeFiles/webserv.dir/srcs/Response/getPath.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserv.dir/srcs/Response/getPath.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jonasbb/Documents/Projects/webserv/srcs/Response/getPath.cpp -o CMakeFiles/webserv.dir/srcs/Response/getPath.cpp.s

CMakeFiles/webserv.dir/srcs/Response/Response.cpp.o: CMakeFiles/webserv.dir/flags.make
CMakeFiles/webserv.dir/srcs/Response/Response.cpp.o: ../srcs/Response/Response.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jonasbb/Documents/Projects/webserv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/webserv.dir/srcs/Response/Response.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserv.dir/srcs/Response/Response.cpp.o -c /home/jonasbb/Documents/Projects/webserv/srcs/Response/Response.cpp

CMakeFiles/webserv.dir/srcs/Response/Response.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserv.dir/srcs/Response/Response.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jonasbb/Documents/Projects/webserv/srcs/Response/Response.cpp > CMakeFiles/webserv.dir/srcs/Response/Response.cpp.i

CMakeFiles/webserv.dir/srcs/Response/Response.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserv.dir/srcs/Response/Response.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jonasbb/Documents/Projects/webserv/srcs/Response/Response.cpp -o CMakeFiles/webserv.dir/srcs/Response/Response.cpp.s

CMakeFiles/webserv.dir/srcs/Response/responseHeader.cpp.o: CMakeFiles/webserv.dir/flags.make
CMakeFiles/webserv.dir/srcs/Response/responseHeader.cpp.o: ../srcs/Response/responseHeader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jonasbb/Documents/Projects/webserv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/webserv.dir/srcs/Response/responseHeader.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserv.dir/srcs/Response/responseHeader.cpp.o -c /home/jonasbb/Documents/Projects/webserv/srcs/Response/responseHeader.cpp

CMakeFiles/webserv.dir/srcs/Response/responseHeader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserv.dir/srcs/Response/responseHeader.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jonasbb/Documents/Projects/webserv/srcs/Response/responseHeader.cpp > CMakeFiles/webserv.dir/srcs/Response/responseHeader.cpp.i

CMakeFiles/webserv.dir/srcs/Response/responseHeader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserv.dir/srcs/Response/responseHeader.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jonasbb/Documents/Projects/webserv/srcs/Response/responseHeader.cpp -o CMakeFiles/webserv.dir/srcs/Response/responseHeader.cpp.s

CMakeFiles/webserv.dir/srcs/Server/location.cpp.o: CMakeFiles/webserv.dir/flags.make
CMakeFiles/webserv.dir/srcs/Server/location.cpp.o: ../srcs/Server/location.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jonasbb/Documents/Projects/webserv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/webserv.dir/srcs/Server/location.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserv.dir/srcs/Server/location.cpp.o -c /home/jonasbb/Documents/Projects/webserv/srcs/Server/location.cpp

CMakeFiles/webserv.dir/srcs/Server/location.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserv.dir/srcs/Server/location.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jonasbb/Documents/Projects/webserv/srcs/Server/location.cpp > CMakeFiles/webserv.dir/srcs/Server/location.cpp.i

CMakeFiles/webserv.dir/srcs/Server/location.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserv.dir/srcs/Server/location.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jonasbb/Documents/Projects/webserv/srcs/Server/location.cpp -o CMakeFiles/webserv.dir/srcs/Server/location.cpp.s

CMakeFiles/webserv.dir/srcs/Server/parser.cpp.o: CMakeFiles/webserv.dir/flags.make
CMakeFiles/webserv.dir/srcs/Server/parser.cpp.o: ../srcs/Server/parser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jonasbb/Documents/Projects/webserv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/webserv.dir/srcs/Server/parser.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserv.dir/srcs/Server/parser.cpp.o -c /home/jonasbb/Documents/Projects/webserv/srcs/Server/parser.cpp

CMakeFiles/webserv.dir/srcs/Server/parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserv.dir/srcs/Server/parser.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jonasbb/Documents/Projects/webserv/srcs/Server/parser.cpp > CMakeFiles/webserv.dir/srcs/Server/parser.cpp.i

CMakeFiles/webserv.dir/srcs/Server/parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserv.dir/srcs/Server/parser.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jonasbb/Documents/Projects/webserv/srcs/Server/parser.cpp -o CMakeFiles/webserv.dir/srcs/Server/parser.cpp.s

CMakeFiles/webserv.dir/srcs/Server/serverBasic.cpp.o: CMakeFiles/webserv.dir/flags.make
CMakeFiles/webserv.dir/srcs/Server/serverBasic.cpp.o: ../srcs/Server/serverBasic.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jonasbb/Documents/Projects/webserv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/webserv.dir/srcs/Server/serverBasic.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserv.dir/srcs/Server/serverBasic.cpp.o -c /home/jonasbb/Documents/Projects/webserv/srcs/Server/serverBasic.cpp

CMakeFiles/webserv.dir/srcs/Server/serverBasic.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserv.dir/srcs/Server/serverBasic.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jonasbb/Documents/Projects/webserv/srcs/Server/serverBasic.cpp > CMakeFiles/webserv.dir/srcs/Server/serverBasic.cpp.i

CMakeFiles/webserv.dir/srcs/Server/serverBasic.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserv.dir/srcs/Server/serverBasic.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jonasbb/Documents/Projects/webserv/srcs/Server/serverBasic.cpp -o CMakeFiles/webserv.dir/srcs/Server/serverBasic.cpp.s

CMakeFiles/webserv.dir/srcs/Server/serverUtility.cpp.o: CMakeFiles/webserv.dir/flags.make
CMakeFiles/webserv.dir/srcs/Server/serverUtility.cpp.o: ../srcs/Server/serverUtility.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jonasbb/Documents/Projects/webserv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/webserv.dir/srcs/Server/serverUtility.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserv.dir/srcs/Server/serverUtility.cpp.o -c /home/jonasbb/Documents/Projects/webserv/srcs/Server/serverUtility.cpp

CMakeFiles/webserv.dir/srcs/Server/serverUtility.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserv.dir/srcs/Server/serverUtility.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jonasbb/Documents/Projects/webserv/srcs/Server/serverUtility.cpp > CMakeFiles/webserv.dir/srcs/Server/serverUtility.cpp.i

CMakeFiles/webserv.dir/srcs/Server/serverUtility.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserv.dir/srcs/Server/serverUtility.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jonasbb/Documents/Projects/webserv/srcs/Server/serverUtility.cpp -o CMakeFiles/webserv.dir/srcs/Server/serverUtility.cpp.s

CMakeFiles/webserv.dir/srcs/Utils/utils.cpp.o: CMakeFiles/webserv.dir/flags.make
CMakeFiles/webserv.dir/srcs/Utils/utils.cpp.o: ../srcs/Utils/utils.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jonasbb/Documents/Projects/webserv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/webserv.dir/srcs/Utils/utils.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserv.dir/srcs/Utils/utils.cpp.o -c /home/jonasbb/Documents/Projects/webserv/srcs/Utils/utils.cpp

CMakeFiles/webserv.dir/srcs/Utils/utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserv.dir/srcs/Utils/utils.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jonasbb/Documents/Projects/webserv/srcs/Utils/utils.cpp > CMakeFiles/webserv.dir/srcs/Utils/utils.cpp.i

CMakeFiles/webserv.dir/srcs/Utils/utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserv.dir/srcs/Utils/utils.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jonasbb/Documents/Projects/webserv/srcs/Utils/utils.cpp -o CMakeFiles/webserv.dir/srcs/Utils/utils.cpp.s

CMakeFiles/webserv.dir/srcs/Utils/Base64.cpp.o: CMakeFiles/webserv.dir/flags.make
CMakeFiles/webserv.dir/srcs/Utils/Base64.cpp.o: ../srcs/Utils/Base64.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jonasbb/Documents/Projects/webserv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/webserv.dir/srcs/Utils/Base64.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserv.dir/srcs/Utils/Base64.cpp.o -c /home/jonasbb/Documents/Projects/webserv/srcs/Utils/Base64.cpp

CMakeFiles/webserv.dir/srcs/Utils/Base64.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserv.dir/srcs/Utils/Base64.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jonasbb/Documents/Projects/webserv/srcs/Utils/Base64.cpp > CMakeFiles/webserv.dir/srcs/Utils/Base64.cpp.i

CMakeFiles/webserv.dir/srcs/Utils/Base64.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserv.dir/srcs/Utils/Base64.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jonasbb/Documents/Projects/webserv/srcs/Utils/Base64.cpp -o CMakeFiles/webserv.dir/srcs/Utils/Base64.cpp.s

CMakeFiles/webserv.dir/srcs/webserv.cpp.o: CMakeFiles/webserv.dir/flags.make
CMakeFiles/webserv.dir/srcs/webserv.cpp.o: ../srcs/webserv.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jonasbb/Documents/Projects/webserv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/webserv.dir/srcs/webserv.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserv.dir/srcs/webserv.cpp.o -c /home/jonasbb/Documents/Projects/webserv/srcs/webserv.cpp

CMakeFiles/webserv.dir/srcs/webserv.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserv.dir/srcs/webserv.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jonasbb/Documents/Projects/webserv/srcs/webserv.cpp > CMakeFiles/webserv.dir/srcs/webserv.cpp.i

CMakeFiles/webserv.dir/srcs/webserv.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserv.dir/srcs/webserv.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jonasbb/Documents/Projects/webserv/srcs/webserv.cpp -o CMakeFiles/webserv.dir/srcs/webserv.cpp.s

CMakeFiles/webserv.dir/srcs/Server/connection.cpp.o: CMakeFiles/webserv.dir/flags.make
CMakeFiles/webserv.dir/srcs/Server/connection.cpp.o: ../srcs/Server/connection.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jonasbb/Documents/Projects/webserv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/webserv.dir/srcs/Server/connection.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserv.dir/srcs/Server/connection.cpp.o -c /home/jonasbb/Documents/Projects/webserv/srcs/Server/connection.cpp

CMakeFiles/webserv.dir/srcs/Server/connection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserv.dir/srcs/Server/connection.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jonasbb/Documents/Projects/webserv/srcs/Server/connection.cpp > CMakeFiles/webserv.dir/srcs/Server/connection.cpp.i

CMakeFiles/webserv.dir/srcs/Server/connection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserv.dir/srcs/Server/connection.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jonasbb/Documents/Projects/webserv/srcs/Server/connection.cpp -o CMakeFiles/webserv.dir/srcs/Server/connection.cpp.s

# Object files for target webserv
webserv_OBJECTS = \
"CMakeFiles/webserv.dir/srcs/CGI/CGI.cpp.o" \
"CMakeFiles/webserv.dir/srcs/Cluster/serverCluster.cpp.o" \
"CMakeFiles/webserv.dir/srcs/Request/request.cpp.o" \
"CMakeFiles/webserv.dir/srcs/Response/getPath.cpp.o" \
"CMakeFiles/webserv.dir/srcs/Response/Response.cpp.o" \
"CMakeFiles/webserv.dir/srcs/Response/responseHeader.cpp.o" \
"CMakeFiles/webserv.dir/srcs/Server/location.cpp.o" \
"CMakeFiles/webserv.dir/srcs/Server/parser.cpp.o" \
"CMakeFiles/webserv.dir/srcs/Server/serverBasic.cpp.o" \
"CMakeFiles/webserv.dir/srcs/Server/serverUtility.cpp.o" \
"CMakeFiles/webserv.dir/srcs/Utils/utils.cpp.o" \
"CMakeFiles/webserv.dir/srcs/Utils/Base64.cpp.o" \
"CMakeFiles/webserv.dir/srcs/webserv.cpp.o" \
"CMakeFiles/webserv.dir/srcs/Server/connection.cpp.o"

# External object files for target webserv
webserv_EXTERNAL_OBJECTS =

webserv: CMakeFiles/webserv.dir/srcs/CGI/CGI.cpp.o
webserv: CMakeFiles/webserv.dir/srcs/Cluster/serverCluster.cpp.o
webserv: CMakeFiles/webserv.dir/srcs/Request/request.cpp.o
webserv: CMakeFiles/webserv.dir/srcs/Response/getPath.cpp.o
webserv: CMakeFiles/webserv.dir/srcs/Response/Response.cpp.o
webserv: CMakeFiles/webserv.dir/srcs/Response/responseHeader.cpp.o
webserv: CMakeFiles/webserv.dir/srcs/Server/location.cpp.o
webserv: CMakeFiles/webserv.dir/srcs/Server/parser.cpp.o
webserv: CMakeFiles/webserv.dir/srcs/Server/serverBasic.cpp.o
webserv: CMakeFiles/webserv.dir/srcs/Server/serverUtility.cpp.o
webserv: CMakeFiles/webserv.dir/srcs/Utils/utils.cpp.o
webserv: CMakeFiles/webserv.dir/srcs/Utils/Base64.cpp.o
webserv: CMakeFiles/webserv.dir/srcs/webserv.cpp.o
webserv: CMakeFiles/webserv.dir/srcs/Server/connection.cpp.o
webserv: CMakeFiles/webserv.dir/build.make
webserv: CMakeFiles/webserv.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jonasbb/Documents/Projects/webserv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Linking CXX executable webserv"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/webserv.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/webserv.dir/build: webserv

.PHONY : CMakeFiles/webserv.dir/build

CMakeFiles/webserv.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/webserv.dir/cmake_clean.cmake
.PHONY : CMakeFiles/webserv.dir/clean

CMakeFiles/webserv.dir/depend:
	cd /home/jonasbb/Documents/Projects/webserv/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jonasbb/Documents/Projects/webserv /home/jonasbb/Documents/Projects/webserv /home/jonasbb/Documents/Projects/webserv/cmake-build-debug /home/jonasbb/Documents/Projects/webserv/cmake-build-debug /home/jonasbb/Documents/Projects/webserv/cmake-build-debug/CMakeFiles/webserv.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/webserv.dir/depend

