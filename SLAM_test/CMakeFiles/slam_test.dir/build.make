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
CMAKE_SOURCE_DIR = /home/jinbiao/projects/SLAM_TEST

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jinbiao/SLAM_test/SLAM_test

# Include any dependencies generated for this target.
include CMakeFiles/slam_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/slam_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/slam_test.dir/flags.make

CMakeFiles/slam_test.dir/main.cpp.o: CMakeFiles/slam_test.dir/flags.make
CMakeFiles/slam_test.dir/main.cpp.o: /home/jinbiao/projects/SLAM_TEST/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jinbiao/SLAM_test/SLAM_test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/slam_test.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/slam_test.dir/main.cpp.o -c /home/jinbiao/projects/SLAM_TEST/main.cpp

CMakeFiles/slam_test.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/slam_test.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jinbiao/projects/SLAM_TEST/main.cpp > CMakeFiles/slam_test.dir/main.cpp.i

CMakeFiles/slam_test.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/slam_test.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jinbiao/projects/SLAM_TEST/main.cpp -o CMakeFiles/slam_test.dir/main.cpp.s

CMakeFiles/slam_test.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/slam_test.dir/main.cpp.o.requires

CMakeFiles/slam_test.dir/main.cpp.o.provides: CMakeFiles/slam_test.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/slam_test.dir/build.make CMakeFiles/slam_test.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/slam_test.dir/main.cpp.o.provides

CMakeFiles/slam_test.dir/main.cpp.o.provides.build: CMakeFiles/slam_test.dir/main.cpp.o


# Object files for target slam_test
slam_test_OBJECTS = \
"CMakeFiles/slam_test.dir/main.cpp.o"

# External object files for target slam_test
slam_test_EXTERNAL_OBJECTS =

slam_test: CMakeFiles/slam_test.dir/main.cpp.o
slam_test: CMakeFiles/slam_test.dir/build.make
slam_test: CMakeFiles/slam_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jinbiao/SLAM_test/SLAM_test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable slam_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/slam_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/slam_test.dir/build: slam_test

.PHONY : CMakeFiles/slam_test.dir/build

CMakeFiles/slam_test.dir/requires: CMakeFiles/slam_test.dir/main.cpp.o.requires

.PHONY : CMakeFiles/slam_test.dir/requires

CMakeFiles/slam_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/slam_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/slam_test.dir/clean

CMakeFiles/slam_test.dir/depend:
	cd /home/jinbiao/SLAM_test/SLAM_test && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jinbiao/projects/SLAM_TEST /home/jinbiao/projects/SLAM_TEST /home/jinbiao/SLAM_test/SLAM_test /home/jinbiao/SLAM_test/SLAM_test /home/jinbiao/SLAM_test/SLAM_test/CMakeFiles/slam_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/slam_test.dir/depend

