# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/c01/naya_navigation/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/c01/naya_navigation/build

# Utility rule file for clean_test_results_map_server.

# Include the progress variables for this target.
include navigation-kinetic-devel/map_server/CMakeFiles/clean_test_results_map_server.dir/progress.make

navigation-kinetic-devel/map_server/CMakeFiles/clean_test_results_map_server:
	cd /home/c01/naya_navigation/build/navigation-kinetic-devel/map_server && /usr/bin/python2 /opt/ros/kinetic/share/catkin/cmake/test/remove_test_results.py /home/c01/naya_navigation/build/test_results/map_server

clean_test_results_map_server: navigation-kinetic-devel/map_server/CMakeFiles/clean_test_results_map_server
clean_test_results_map_server: navigation-kinetic-devel/map_server/CMakeFiles/clean_test_results_map_server.dir/build.make

.PHONY : clean_test_results_map_server

# Rule to build all files generated by this target.
navigation-kinetic-devel/map_server/CMakeFiles/clean_test_results_map_server.dir/build: clean_test_results_map_server

.PHONY : navigation-kinetic-devel/map_server/CMakeFiles/clean_test_results_map_server.dir/build

navigation-kinetic-devel/map_server/CMakeFiles/clean_test_results_map_server.dir/clean:
	cd /home/c01/naya_navigation/build/navigation-kinetic-devel/map_server && $(CMAKE_COMMAND) -P CMakeFiles/clean_test_results_map_server.dir/cmake_clean.cmake
.PHONY : navigation-kinetic-devel/map_server/CMakeFiles/clean_test_results_map_server.dir/clean

navigation-kinetic-devel/map_server/CMakeFiles/clean_test_results_map_server.dir/depend:
	cd /home/c01/naya_navigation/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/c01/naya_navigation/src /home/c01/naya_navigation/src/navigation-kinetic-devel/map_server /home/c01/naya_navigation/build /home/c01/naya_navigation/build/navigation-kinetic-devel/map_server /home/c01/naya_navigation/build/navigation-kinetic-devel/map_server/CMakeFiles/clean_test_results_map_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : navigation-kinetic-devel/map_server/CMakeFiles/clean_test_results_map_server.dir/depend

