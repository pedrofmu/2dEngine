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
CMAKE_SOURCE_DIR = /home/pedro_mint/2DGraphicEngine

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pedro_mint/2DGraphicEngine/build

# Include any dependencies generated for this target.
include CMakeFiles/2dEngine.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/2dEngine.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/2dEngine.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/2dEngine.dir/flags.make

CMakeFiles/2dEngine.dir/src/engine.cpp.o: CMakeFiles/2dEngine.dir/flags.make
CMakeFiles/2dEngine.dir/src/engine.cpp.o: ../src/engine.cpp
CMakeFiles/2dEngine.dir/src/engine.cpp.o: CMakeFiles/2dEngine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pedro_mint/2DGraphicEngine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/2dEngine.dir/src/engine.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/2dEngine.dir/src/engine.cpp.o -MF CMakeFiles/2dEngine.dir/src/engine.cpp.o.d -o CMakeFiles/2dEngine.dir/src/engine.cpp.o -c /home/pedro_mint/2DGraphicEngine/src/engine.cpp

CMakeFiles/2dEngine.dir/src/engine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/2dEngine.dir/src/engine.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pedro_mint/2DGraphicEngine/src/engine.cpp > CMakeFiles/2dEngine.dir/src/engine.cpp.i

CMakeFiles/2dEngine.dir/src/engine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/2dEngine.dir/src/engine.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pedro_mint/2DGraphicEngine/src/engine.cpp -o CMakeFiles/2dEngine.dir/src/engine.cpp.s

CMakeFiles/2dEngine.dir/src/glad.c.o: CMakeFiles/2dEngine.dir/flags.make
CMakeFiles/2dEngine.dir/src/glad.c.o: ../src/glad.c
CMakeFiles/2dEngine.dir/src/glad.c.o: CMakeFiles/2dEngine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pedro_mint/2DGraphicEngine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/2dEngine.dir/src/glad.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/2dEngine.dir/src/glad.c.o -MF CMakeFiles/2dEngine.dir/src/glad.c.o.d -o CMakeFiles/2dEngine.dir/src/glad.c.o -c /home/pedro_mint/2DGraphicEngine/src/glad.c

CMakeFiles/2dEngine.dir/src/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/2dEngine.dir/src/glad.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pedro_mint/2DGraphicEngine/src/glad.c > CMakeFiles/2dEngine.dir/src/glad.c.i

CMakeFiles/2dEngine.dir/src/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/2dEngine.dir/src/glad.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pedro_mint/2DGraphicEngine/src/glad.c -o CMakeFiles/2dEngine.dir/src/glad.c.s

CMakeFiles/2dEngine.dir/src/main.cpp.o: CMakeFiles/2dEngine.dir/flags.make
CMakeFiles/2dEngine.dir/src/main.cpp.o: ../src/main.cpp
CMakeFiles/2dEngine.dir/src/main.cpp.o: CMakeFiles/2dEngine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pedro_mint/2DGraphicEngine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/2dEngine.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/2dEngine.dir/src/main.cpp.o -MF CMakeFiles/2dEngine.dir/src/main.cpp.o.d -o CMakeFiles/2dEngine.dir/src/main.cpp.o -c /home/pedro_mint/2DGraphicEngine/src/main.cpp

CMakeFiles/2dEngine.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/2dEngine.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pedro_mint/2DGraphicEngine/src/main.cpp > CMakeFiles/2dEngine.dir/src/main.cpp.i

CMakeFiles/2dEngine.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/2dEngine.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pedro_mint/2DGraphicEngine/src/main.cpp -o CMakeFiles/2dEngine.dir/src/main.cpp.s

CMakeFiles/2dEngine.dir/src/rendering/shader.cpp.o: CMakeFiles/2dEngine.dir/flags.make
CMakeFiles/2dEngine.dir/src/rendering/shader.cpp.o: ../src/rendering/shader.cpp
CMakeFiles/2dEngine.dir/src/rendering/shader.cpp.o: CMakeFiles/2dEngine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pedro_mint/2DGraphicEngine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/2dEngine.dir/src/rendering/shader.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/2dEngine.dir/src/rendering/shader.cpp.o -MF CMakeFiles/2dEngine.dir/src/rendering/shader.cpp.o.d -o CMakeFiles/2dEngine.dir/src/rendering/shader.cpp.o -c /home/pedro_mint/2DGraphicEngine/src/rendering/shader.cpp

CMakeFiles/2dEngine.dir/src/rendering/shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/2dEngine.dir/src/rendering/shader.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pedro_mint/2DGraphicEngine/src/rendering/shader.cpp > CMakeFiles/2dEngine.dir/src/rendering/shader.cpp.i

CMakeFiles/2dEngine.dir/src/rendering/shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/2dEngine.dir/src/rendering/shader.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pedro_mint/2DGraphicEngine/src/rendering/shader.cpp -o CMakeFiles/2dEngine.dir/src/rendering/shader.cpp.s

CMakeFiles/2dEngine.dir/src/rendering/sprite.cpp.o: CMakeFiles/2dEngine.dir/flags.make
CMakeFiles/2dEngine.dir/src/rendering/sprite.cpp.o: ../src/rendering/sprite.cpp
CMakeFiles/2dEngine.dir/src/rendering/sprite.cpp.o: CMakeFiles/2dEngine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pedro_mint/2DGraphicEngine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/2dEngine.dir/src/rendering/sprite.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/2dEngine.dir/src/rendering/sprite.cpp.o -MF CMakeFiles/2dEngine.dir/src/rendering/sprite.cpp.o.d -o CMakeFiles/2dEngine.dir/src/rendering/sprite.cpp.o -c /home/pedro_mint/2DGraphicEngine/src/rendering/sprite.cpp

CMakeFiles/2dEngine.dir/src/rendering/sprite.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/2dEngine.dir/src/rendering/sprite.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pedro_mint/2DGraphicEngine/src/rendering/sprite.cpp > CMakeFiles/2dEngine.dir/src/rendering/sprite.cpp.i

CMakeFiles/2dEngine.dir/src/rendering/sprite.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/2dEngine.dir/src/rendering/sprite.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pedro_mint/2DGraphicEngine/src/rendering/sprite.cpp -o CMakeFiles/2dEngine.dir/src/rendering/sprite.cpp.s

# Object files for target 2dEngine
2dEngine_OBJECTS = \
"CMakeFiles/2dEngine.dir/src/engine.cpp.o" \
"CMakeFiles/2dEngine.dir/src/glad.c.o" \
"CMakeFiles/2dEngine.dir/src/main.cpp.o" \
"CMakeFiles/2dEngine.dir/src/rendering/shader.cpp.o" \
"CMakeFiles/2dEngine.dir/src/rendering/sprite.cpp.o"

# External object files for target 2dEngine
2dEngine_EXTERNAL_OBJECTS =

2dEngine: CMakeFiles/2dEngine.dir/src/engine.cpp.o
2dEngine: CMakeFiles/2dEngine.dir/src/glad.c.o
2dEngine: CMakeFiles/2dEngine.dir/src/main.cpp.o
2dEngine: CMakeFiles/2dEngine.dir/src/rendering/shader.cpp.o
2dEngine: CMakeFiles/2dEngine.dir/src/rendering/sprite.cpp.o
2dEngine: CMakeFiles/2dEngine.dir/build.make
2dEngine: /usr/local/lib/libglfw3.a
2dEngine: /usr/lib/x86_64-linux-gnu/librt.a
2dEngine: /usr/lib/x86_64-linux-gnu/libm.so
2dEngine: CMakeFiles/2dEngine.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pedro_mint/2DGraphicEngine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable 2dEngine"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/2dEngine.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/2dEngine.dir/build: 2dEngine
.PHONY : CMakeFiles/2dEngine.dir/build

CMakeFiles/2dEngine.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/2dEngine.dir/cmake_clean.cmake
.PHONY : CMakeFiles/2dEngine.dir/clean

CMakeFiles/2dEngine.dir/depend:
	cd /home/pedro_mint/2DGraphicEngine/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pedro_mint/2DGraphicEngine /home/pedro_mint/2DGraphicEngine /home/pedro_mint/2DGraphicEngine/build /home/pedro_mint/2DGraphicEngine/build /home/pedro_mint/2DGraphicEngine/build/CMakeFiles/2dEngine.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/2dEngine.dir/depend

