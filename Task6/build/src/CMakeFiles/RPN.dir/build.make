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
CMAKE_SOURCE_DIR = /root/oop/Task6

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/oop/Task6/build

# Include any dependencies generated for this target.
include src/CMakeFiles/RPN.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/RPN.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/RPN.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/RPN.dir/flags.make

src/CMakeFiles/RPN.dir/RPN.cpp.o: src/CMakeFiles/RPN.dir/flags.make
src/CMakeFiles/RPN.dir/RPN.cpp.o: ../src/RPN.cpp
src/CMakeFiles/RPN.dir/RPN.cpp.o: src/CMakeFiles/RPN.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/oop/Task6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/RPN.dir/RPN.cpp.o"
	cd /root/oop/Task6/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/RPN.dir/RPN.cpp.o -MF CMakeFiles/RPN.dir/RPN.cpp.o.d -o CMakeFiles/RPN.dir/RPN.cpp.o -c /root/oop/Task6/src/RPN.cpp

src/CMakeFiles/RPN.dir/RPN.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RPN.dir/RPN.cpp.i"
	cd /root/oop/Task6/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/oop/Task6/src/RPN.cpp > CMakeFiles/RPN.dir/RPN.cpp.i

src/CMakeFiles/RPN.dir/RPN.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RPN.dir/RPN.cpp.s"
	cd /root/oop/Task6/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/oop/Task6/src/RPN.cpp -o CMakeFiles/RPN.dir/RPN.cpp.s

# Object files for target RPN
RPN_OBJECTS = \
"CMakeFiles/RPN.dir/RPN.cpp.o"

# External object files for target RPN
RPN_EXTERNAL_OBJECTS =

src/libRPN.a: src/CMakeFiles/RPN.dir/RPN.cpp.o
src/libRPN.a: src/CMakeFiles/RPN.dir/build.make
src/libRPN.a: src/CMakeFiles/RPN.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/oop/Task6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libRPN.a"
	cd /root/oop/Task6/build/src && $(CMAKE_COMMAND) -P CMakeFiles/RPN.dir/cmake_clean_target.cmake
	cd /root/oop/Task6/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RPN.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/RPN.dir/build: src/libRPN.a
.PHONY : src/CMakeFiles/RPN.dir/build

src/CMakeFiles/RPN.dir/clean:
	cd /root/oop/Task6/build/src && $(CMAKE_COMMAND) -P CMakeFiles/RPN.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/RPN.dir/clean

src/CMakeFiles/RPN.dir/depend:
	cd /root/oop/Task6/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/oop/Task6 /root/oop/Task6/src /root/oop/Task6/build /root/oop/Task6/build/src /root/oop/Task6/build/src/CMakeFiles/RPN.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/RPN.dir/depend

