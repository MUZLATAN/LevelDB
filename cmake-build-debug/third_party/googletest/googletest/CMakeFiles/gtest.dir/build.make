# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /home/z/software/clion-2019.3.3/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/z/software/clion-2019.3.3/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/z/CWorkspace/leveldb

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/z/CWorkspace/leveldb/cmake-build-debug

# Include any dependencies generated for this target.
include third_party/googletest/googletest/CMakeFiles/gtest.dir/depend.make

# Include the progress variables for this target.
include third_party/googletest/googletest/CMakeFiles/gtest.dir/progress.make

# Include the compile flags for this target's objects.
include third_party/googletest/googletest/CMakeFiles/gtest.dir/flags.make

third_party/googletest/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.o: third_party/googletest/googletest/CMakeFiles/gtest.dir/flags.make
third_party/googletest/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.o: ../third_party/googletest/googletest/src/gtest-all.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/z/CWorkspace/leveldb/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object third_party/googletest/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.o"
	cd /home/z/CWorkspace/leveldb/cmake-build-debug/third_party/googletest/googletest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gtest.dir/src/gtest-all.cc.o -c /home/z/CWorkspace/leveldb/third_party/googletest/googletest/src/gtest-all.cc

third_party/googletest/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gtest.dir/src/gtest-all.cc.i"
	cd /home/z/CWorkspace/leveldb/cmake-build-debug/third_party/googletest/googletest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/z/CWorkspace/leveldb/third_party/googletest/googletest/src/gtest-all.cc > CMakeFiles/gtest.dir/src/gtest-all.cc.i

third_party/googletest/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gtest.dir/src/gtest-all.cc.s"
	cd /home/z/CWorkspace/leveldb/cmake-build-debug/third_party/googletest/googletest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/z/CWorkspace/leveldb/third_party/googletest/googletest/src/gtest-all.cc -o CMakeFiles/gtest.dir/src/gtest-all.cc.s

# Object files for target gtest
gtest_OBJECTS = \
"CMakeFiles/gtest.dir/src/gtest-all.cc.o"

# External object files for target gtest
gtest_EXTERNAL_OBJECTS =

lib/libgtestd.a: third_party/googletest/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.o
lib/libgtestd.a: third_party/googletest/googletest/CMakeFiles/gtest.dir/build.make
lib/libgtestd.a: third_party/googletest/googletest/CMakeFiles/gtest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/z/CWorkspace/leveldb/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../../lib/libgtestd.a"
	cd /home/z/CWorkspace/leveldb/cmake-build-debug/third_party/googletest/googletest && $(CMAKE_COMMAND) -P CMakeFiles/gtest.dir/cmake_clean_target.cmake
	cd /home/z/CWorkspace/leveldb/cmake-build-debug/third_party/googletest/googletest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gtest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
third_party/googletest/googletest/CMakeFiles/gtest.dir/build: lib/libgtestd.a

.PHONY : third_party/googletest/googletest/CMakeFiles/gtest.dir/build

third_party/googletest/googletest/CMakeFiles/gtest.dir/clean:
	cd /home/z/CWorkspace/leveldb/cmake-build-debug/third_party/googletest/googletest && $(CMAKE_COMMAND) -P CMakeFiles/gtest.dir/cmake_clean.cmake
.PHONY : third_party/googletest/googletest/CMakeFiles/gtest.dir/clean

third_party/googletest/googletest/CMakeFiles/gtest.dir/depend:
	cd /home/z/CWorkspace/leveldb/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/z/CWorkspace/leveldb /home/z/CWorkspace/leveldb/third_party/googletest/googletest /home/z/CWorkspace/leveldb/cmake-build-debug /home/z/CWorkspace/leveldb/cmake-build-debug/third_party/googletest/googletest /home/z/CWorkspace/leveldb/cmake-build-debug/third_party/googletest/googletest/CMakeFiles/gtest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : third_party/googletest/googletest/CMakeFiles/gtest.dir/depend

