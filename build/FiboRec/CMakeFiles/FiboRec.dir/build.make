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
include FiboRec/CMakeFiles/FiboRec.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include FiboRec/CMakeFiles/FiboRec.dir/compiler_depend.make

# Include the progress variables for this target.
include FiboRec/CMakeFiles/FiboRec.dir/progress.make

# Include the compile flags for this target's objects.
include FiboRec/CMakeFiles/FiboRec.dir/flags.make

FiboRec/CMakeFiles/FiboRec.dir/main.cpp.o: FiboRec/CMakeFiles/FiboRec.dir/flags.make
FiboRec/CMakeFiles/FiboRec.dir/main.cpp.o: ../FiboRec/main.cpp
FiboRec/CMakeFiles/FiboRec.dir/main.cpp.o: FiboRec/CMakeFiles/FiboRec.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dg/dev/Sources/DSA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object FiboRec/CMakeFiles/FiboRec.dir/main.cpp.o"
	cd /home/dg/dev/Sources/DSA/build/FiboRec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT FiboRec/CMakeFiles/FiboRec.dir/main.cpp.o -MF CMakeFiles/FiboRec.dir/main.cpp.o.d -o CMakeFiles/FiboRec.dir/main.cpp.o -c /home/dg/dev/Sources/DSA/FiboRec/main.cpp

FiboRec/CMakeFiles/FiboRec.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FiboRec.dir/main.cpp.i"
	cd /home/dg/dev/Sources/DSA/build/FiboRec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dg/dev/Sources/DSA/FiboRec/main.cpp > CMakeFiles/FiboRec.dir/main.cpp.i

FiboRec/CMakeFiles/FiboRec.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FiboRec.dir/main.cpp.s"
	cd /home/dg/dev/Sources/DSA/build/FiboRec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dg/dev/Sources/DSA/FiboRec/main.cpp -o CMakeFiles/FiboRec.dir/main.cpp.s

# Object files for target FiboRec
FiboRec_OBJECTS = \
"CMakeFiles/FiboRec.dir/main.cpp.o"

# External object files for target FiboRec
FiboRec_EXTERNAL_OBJECTS =

FiboRec/FiboRec: FiboRec/CMakeFiles/FiboRec.dir/main.cpp.o
FiboRec/FiboRec: FiboRec/CMakeFiles/FiboRec.dir/build.make
FiboRec/FiboRec: FiboRec/CMakeFiles/FiboRec.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dg/dev/Sources/DSA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable FiboRec"
	cd /home/dg/dev/Sources/DSA/build/FiboRec && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/FiboRec.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
FiboRec/CMakeFiles/FiboRec.dir/build: FiboRec/FiboRec
.PHONY : FiboRec/CMakeFiles/FiboRec.dir/build

FiboRec/CMakeFiles/FiboRec.dir/clean:
	cd /home/dg/dev/Sources/DSA/build/FiboRec && $(CMAKE_COMMAND) -P CMakeFiles/FiboRec.dir/cmake_clean.cmake
.PHONY : FiboRec/CMakeFiles/FiboRec.dir/clean

FiboRec/CMakeFiles/FiboRec.dir/depend:
	cd /home/dg/dev/Sources/DSA/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dg/dev/Sources/DSA /home/dg/dev/Sources/DSA/FiboRec /home/dg/dev/Sources/DSA/build /home/dg/dev/Sources/DSA/build/FiboRec /home/dg/dev/Sources/DSA/build/FiboRec/CMakeFiles/FiboRec.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : FiboRec/CMakeFiles/FiboRec.dir/depend
