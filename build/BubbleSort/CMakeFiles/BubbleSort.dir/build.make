# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dg/dev/Sources/DSA

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dg/dev/Sources/DSA/build

# Include any dependencies generated for this target.
include BubbleSort/CMakeFiles/BubbleSort.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include BubbleSort/CMakeFiles/BubbleSort.dir/compiler_depend.make

# Include the progress variables for this target.
include BubbleSort/CMakeFiles/BubbleSort.dir/progress.make

# Include the compile flags for this target's objects.
include BubbleSort/CMakeFiles/BubbleSort.dir/flags.make

BubbleSort/CMakeFiles/BubbleSort.dir/main.cpp.o: BubbleSort/CMakeFiles/BubbleSort.dir/flags.make
BubbleSort/CMakeFiles/BubbleSort.dir/main.cpp.o: ../BubbleSort/main.cpp
BubbleSort/CMakeFiles/BubbleSort.dir/main.cpp.o: BubbleSort/CMakeFiles/BubbleSort.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dg/dev/Sources/DSA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object BubbleSort/CMakeFiles/BubbleSort.dir/main.cpp.o"
	cd /home/dg/dev/Sources/DSA/build/BubbleSort && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT BubbleSort/CMakeFiles/BubbleSort.dir/main.cpp.o -MF CMakeFiles/BubbleSort.dir/main.cpp.o.d -o CMakeFiles/BubbleSort.dir/main.cpp.o -c /home/dg/dev/Sources/DSA/BubbleSort/main.cpp

BubbleSort/CMakeFiles/BubbleSort.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BubbleSort.dir/main.cpp.i"
	cd /home/dg/dev/Sources/DSA/build/BubbleSort && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dg/dev/Sources/DSA/BubbleSort/main.cpp > CMakeFiles/BubbleSort.dir/main.cpp.i

BubbleSort/CMakeFiles/BubbleSort.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BubbleSort.dir/main.cpp.s"
	cd /home/dg/dev/Sources/DSA/build/BubbleSort && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dg/dev/Sources/DSA/BubbleSort/main.cpp -o CMakeFiles/BubbleSort.dir/main.cpp.s

# Object files for target BubbleSort
BubbleSort_OBJECTS = \
"CMakeFiles/BubbleSort.dir/main.cpp.o"

# External object files for target BubbleSort
BubbleSort_EXTERNAL_OBJECTS =

BubbleSort/BubbleSort: BubbleSort/CMakeFiles/BubbleSort.dir/main.cpp.o
BubbleSort/BubbleSort: BubbleSort/CMakeFiles/BubbleSort.dir/build.make
BubbleSort/BubbleSort: BubbleSort/CMakeFiles/BubbleSort.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dg/dev/Sources/DSA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable BubbleSort"
	cd /home/dg/dev/Sources/DSA/build/BubbleSort && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/BubbleSort.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
BubbleSort/CMakeFiles/BubbleSort.dir/build: BubbleSort/BubbleSort
.PHONY : BubbleSort/CMakeFiles/BubbleSort.dir/build

BubbleSort/CMakeFiles/BubbleSort.dir/clean:
	cd /home/dg/dev/Sources/DSA/build/BubbleSort && $(CMAKE_COMMAND) -P CMakeFiles/BubbleSort.dir/cmake_clean.cmake
.PHONY : BubbleSort/CMakeFiles/BubbleSort.dir/clean

BubbleSort/CMakeFiles/BubbleSort.dir/depend:
	cd /home/dg/dev/Sources/DSA/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dg/dev/Sources/DSA /home/dg/dev/Sources/DSA/BubbleSort /home/dg/dev/Sources/DSA/build /home/dg/dev/Sources/DSA/build/BubbleSort /home/dg/dev/Sources/DSA/build/BubbleSort/CMakeFiles/BubbleSort.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : BubbleSort/CMakeFiles/BubbleSort.dir/depend

