# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = "/media/sf_share/CMake/CMake作业/CMake 1/modules"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/media/sf_share/CMake/CMake作业/CMake 1/modules/build"

# Include any dependencies generated for this target.
include M1/CMakeFiles/M2.dir/depend.make

# Include the progress variables for this target.
include M1/CMakeFiles/M2.dir/progress.make

# Include the compile flags for this target's objects.
include M1/CMakeFiles/M2.dir/flags.make

M1/CMakeFiles/M2.dir/__/M2/src/M2.o: M1/CMakeFiles/M2.dir/flags.make
M1/CMakeFiles/M2.dir/__/M2/src/M2.o: ../M2/src/M2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/media/sf_share/CMake/CMake作业/CMake 1/modules/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object M1/CMakeFiles/M2.dir/__/M2/src/M2.o"
	cd "/media/sf_share/CMake/CMake作业/CMake 1/modules/build/M1" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/M2.dir/__/M2/src/M2.o -c "/media/sf_share/CMake/CMake作业/CMake 1/modules/M2/src/M2.cpp"

M1/CMakeFiles/M2.dir/__/M2/src/M2.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/M2.dir/__/M2/src/M2.i"
	cd "/media/sf_share/CMake/CMake作业/CMake 1/modules/build/M1" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/media/sf_share/CMake/CMake作业/CMake 1/modules/M2/src/M2.cpp" > CMakeFiles/M2.dir/__/M2/src/M2.i

M1/CMakeFiles/M2.dir/__/M2/src/M2.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/M2.dir/__/M2/src/M2.s"
	cd "/media/sf_share/CMake/CMake作业/CMake 1/modules/build/M1" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/media/sf_share/CMake/CMake作业/CMake 1/modules/M2/src/M2.cpp" -o CMakeFiles/M2.dir/__/M2/src/M2.s

# Object files for target M2
M2_OBJECTS = \
"CMakeFiles/M2.dir/__/M2/src/M2.o"

# External object files for target M2
M2_EXTERNAL_OBJECTS =

M1/libM2.a: M1/CMakeFiles/M2.dir/__/M2/src/M2.o
M1/libM2.a: M1/CMakeFiles/M2.dir/build.make
M1/libM2.a: M1/CMakeFiles/M2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/media/sf_share/CMake/CMake作业/CMake 1/modules/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libM2.a"
	cd "/media/sf_share/CMake/CMake作业/CMake 1/modules/build/M1" && $(CMAKE_COMMAND) -P CMakeFiles/M2.dir/cmake_clean_target.cmake
	cd "/media/sf_share/CMake/CMake作业/CMake 1/modules/build/M1" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/M2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
M1/CMakeFiles/M2.dir/build: M1/libM2.a

.PHONY : M1/CMakeFiles/M2.dir/build

M1/CMakeFiles/M2.dir/clean:
	cd "/media/sf_share/CMake/CMake作业/CMake 1/modules/build/M1" && $(CMAKE_COMMAND) -P CMakeFiles/M2.dir/cmake_clean.cmake
.PHONY : M1/CMakeFiles/M2.dir/clean

M1/CMakeFiles/M2.dir/depend:
	cd "/media/sf_share/CMake/CMake作业/CMake 1/modules/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/media/sf_share/CMake/CMake作业/CMake 1/modules" "/media/sf_share/CMake/CMake作业/CMake 1/modules/M1" "/media/sf_share/CMake/CMake作业/CMake 1/modules/build" "/media/sf_share/CMake/CMake作业/CMake 1/modules/build/M1" "/media/sf_share/CMake/CMake作业/CMake 1/modules/build/M1/CMakeFiles/M2.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : M1/CMakeFiles/M2.dir/depend

