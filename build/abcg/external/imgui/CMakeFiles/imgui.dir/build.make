# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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
CMAKE_SOURCE_DIR = /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/build

# Include any dependencies generated for this target.
include abcg/external/imgui/CMakeFiles/imgui.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include abcg/external/imgui/CMakeFiles/imgui.dir/compiler_depend.make

# Include the progress variables for this target.
include abcg/external/imgui/CMakeFiles/imgui.dir/progress.make

# Include the compile flags for this target's objects.
include abcg/external/imgui/CMakeFiles/imgui.dir/flags.make

abcg/external/imgui/CMakeFiles/imgui.dir/imgui.cpp.o: abcg/external/imgui/CMakeFiles/imgui.dir/flags.make
abcg/external/imgui/CMakeFiles/imgui.dir/imgui.cpp.o: /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/abcg/external/imgui/imgui.cpp
abcg/external/imgui/CMakeFiles/imgui.dir/imgui.cpp.o: abcg/external/imgui/CMakeFiles/imgui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object abcg/external/imgui/CMakeFiles/imgui.dir/imgui.cpp.o"
	cd /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/build/abcg/external/imgui && /usr/bin/ccache /usr/lib64/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT abcg/external/imgui/CMakeFiles/imgui.dir/imgui.cpp.o -MF CMakeFiles/imgui.dir/imgui.cpp.o.d -o CMakeFiles/imgui.dir/imgui.cpp.o -c /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/abcg/external/imgui/imgui.cpp

abcg/external/imgui/CMakeFiles/imgui.dir/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/imgui.cpp.i"
	cd /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/build/abcg/external/imgui && /usr/lib64/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/abcg/external/imgui/imgui.cpp > CMakeFiles/imgui.dir/imgui.cpp.i

abcg/external/imgui/CMakeFiles/imgui.dir/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/imgui.cpp.s"
	cd /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/build/abcg/external/imgui && /usr/lib64/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/abcg/external/imgui/imgui.cpp -o CMakeFiles/imgui.dir/imgui.cpp.s

abcg/external/imgui/CMakeFiles/imgui.dir/imgui_demo.cpp.o: abcg/external/imgui/CMakeFiles/imgui.dir/flags.make
abcg/external/imgui/CMakeFiles/imgui.dir/imgui_demo.cpp.o: /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/abcg/external/imgui/imgui_demo.cpp
abcg/external/imgui/CMakeFiles/imgui.dir/imgui_demo.cpp.o: abcg/external/imgui/CMakeFiles/imgui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object abcg/external/imgui/CMakeFiles/imgui.dir/imgui_demo.cpp.o"
	cd /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/build/abcg/external/imgui && /usr/bin/ccache /usr/lib64/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT abcg/external/imgui/CMakeFiles/imgui.dir/imgui_demo.cpp.o -MF CMakeFiles/imgui.dir/imgui_demo.cpp.o.d -o CMakeFiles/imgui.dir/imgui_demo.cpp.o -c /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/abcg/external/imgui/imgui_demo.cpp

abcg/external/imgui/CMakeFiles/imgui.dir/imgui_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/imgui_demo.cpp.i"
	cd /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/build/abcg/external/imgui && /usr/lib64/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/abcg/external/imgui/imgui_demo.cpp > CMakeFiles/imgui.dir/imgui_demo.cpp.i

abcg/external/imgui/CMakeFiles/imgui.dir/imgui_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/imgui_demo.cpp.s"
	cd /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/build/abcg/external/imgui && /usr/lib64/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/abcg/external/imgui/imgui_demo.cpp -o CMakeFiles/imgui.dir/imgui_demo.cpp.s

abcg/external/imgui/CMakeFiles/imgui.dir/imgui_draw.cpp.o: abcg/external/imgui/CMakeFiles/imgui.dir/flags.make
abcg/external/imgui/CMakeFiles/imgui.dir/imgui_draw.cpp.o: /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/abcg/external/imgui/imgui_draw.cpp
abcg/external/imgui/CMakeFiles/imgui.dir/imgui_draw.cpp.o: abcg/external/imgui/CMakeFiles/imgui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object abcg/external/imgui/CMakeFiles/imgui.dir/imgui_draw.cpp.o"
	cd /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/build/abcg/external/imgui && /usr/bin/ccache /usr/lib64/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT abcg/external/imgui/CMakeFiles/imgui.dir/imgui_draw.cpp.o -MF CMakeFiles/imgui.dir/imgui_draw.cpp.o.d -o CMakeFiles/imgui.dir/imgui_draw.cpp.o -c /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/abcg/external/imgui/imgui_draw.cpp

abcg/external/imgui/CMakeFiles/imgui.dir/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/imgui_draw.cpp.i"
	cd /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/build/abcg/external/imgui && /usr/lib64/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/abcg/external/imgui/imgui_draw.cpp > CMakeFiles/imgui.dir/imgui_draw.cpp.i

abcg/external/imgui/CMakeFiles/imgui.dir/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/imgui_draw.cpp.s"
	cd /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/build/abcg/external/imgui && /usr/lib64/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/abcg/external/imgui/imgui_draw.cpp -o CMakeFiles/imgui.dir/imgui_draw.cpp.s

abcg/external/imgui/CMakeFiles/imgui.dir/imgui_tables.cpp.o: abcg/external/imgui/CMakeFiles/imgui.dir/flags.make
abcg/external/imgui/CMakeFiles/imgui.dir/imgui_tables.cpp.o: /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/abcg/external/imgui/imgui_tables.cpp
abcg/external/imgui/CMakeFiles/imgui.dir/imgui_tables.cpp.o: abcg/external/imgui/CMakeFiles/imgui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object abcg/external/imgui/CMakeFiles/imgui.dir/imgui_tables.cpp.o"
	cd /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/build/abcg/external/imgui && /usr/bin/ccache /usr/lib64/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT abcg/external/imgui/CMakeFiles/imgui.dir/imgui_tables.cpp.o -MF CMakeFiles/imgui.dir/imgui_tables.cpp.o.d -o CMakeFiles/imgui.dir/imgui_tables.cpp.o -c /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/abcg/external/imgui/imgui_tables.cpp

abcg/external/imgui/CMakeFiles/imgui.dir/imgui_tables.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/imgui_tables.cpp.i"
	cd /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/build/abcg/external/imgui && /usr/lib64/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/abcg/external/imgui/imgui_tables.cpp > CMakeFiles/imgui.dir/imgui_tables.cpp.i

abcg/external/imgui/CMakeFiles/imgui.dir/imgui_tables.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/imgui_tables.cpp.s"
	cd /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/build/abcg/external/imgui && /usr/lib64/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/abcg/external/imgui/imgui_tables.cpp -o CMakeFiles/imgui.dir/imgui_tables.cpp.s

abcg/external/imgui/CMakeFiles/imgui.dir/imgui_widgets.cpp.o: abcg/external/imgui/CMakeFiles/imgui.dir/flags.make
abcg/external/imgui/CMakeFiles/imgui.dir/imgui_widgets.cpp.o: /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/abcg/external/imgui/imgui_widgets.cpp
abcg/external/imgui/CMakeFiles/imgui.dir/imgui_widgets.cpp.o: abcg/external/imgui/CMakeFiles/imgui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object abcg/external/imgui/CMakeFiles/imgui.dir/imgui_widgets.cpp.o"
	cd /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/build/abcg/external/imgui && /usr/bin/ccache /usr/lib64/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT abcg/external/imgui/CMakeFiles/imgui.dir/imgui_widgets.cpp.o -MF CMakeFiles/imgui.dir/imgui_widgets.cpp.o.d -o CMakeFiles/imgui.dir/imgui_widgets.cpp.o -c /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/abcg/external/imgui/imgui_widgets.cpp

abcg/external/imgui/CMakeFiles/imgui.dir/imgui_widgets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/imgui_widgets.cpp.i"
	cd /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/build/abcg/external/imgui && /usr/lib64/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/abcg/external/imgui/imgui_widgets.cpp > CMakeFiles/imgui.dir/imgui_widgets.cpp.i

abcg/external/imgui/CMakeFiles/imgui.dir/imgui_widgets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/imgui_widgets.cpp.s"
	cd /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/build/abcg/external/imgui && /usr/lib64/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/abcg/external/imgui/imgui_widgets.cpp -o CMakeFiles/imgui.dir/imgui_widgets.cpp.s

abcg/external/imgui/CMakeFiles/imgui.dir/imgui_impl_sdl.cpp.o: abcg/external/imgui/CMakeFiles/imgui.dir/flags.make
abcg/external/imgui/CMakeFiles/imgui.dir/imgui_impl_sdl.cpp.o: /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/abcg/external/imgui/imgui_impl_sdl.cpp
abcg/external/imgui/CMakeFiles/imgui.dir/imgui_impl_sdl.cpp.o: abcg/external/imgui/CMakeFiles/imgui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object abcg/external/imgui/CMakeFiles/imgui.dir/imgui_impl_sdl.cpp.o"
	cd /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/build/abcg/external/imgui && /usr/bin/ccache /usr/lib64/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT abcg/external/imgui/CMakeFiles/imgui.dir/imgui_impl_sdl.cpp.o -MF CMakeFiles/imgui.dir/imgui_impl_sdl.cpp.o.d -o CMakeFiles/imgui.dir/imgui_impl_sdl.cpp.o -c /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/abcg/external/imgui/imgui_impl_sdl.cpp

abcg/external/imgui/CMakeFiles/imgui.dir/imgui_impl_sdl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/imgui_impl_sdl.cpp.i"
	cd /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/build/abcg/external/imgui && /usr/lib64/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/abcg/external/imgui/imgui_impl_sdl.cpp > CMakeFiles/imgui.dir/imgui_impl_sdl.cpp.i

abcg/external/imgui/CMakeFiles/imgui.dir/imgui_impl_sdl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/imgui_impl_sdl.cpp.s"
	cd /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/build/abcg/external/imgui && /usr/lib64/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/abcg/external/imgui/imgui_impl_sdl.cpp -o CMakeFiles/imgui.dir/imgui_impl_sdl.cpp.s

abcg/external/imgui/CMakeFiles/imgui.dir/imgui_impl_opengl3.cpp.o: abcg/external/imgui/CMakeFiles/imgui.dir/flags.make
abcg/external/imgui/CMakeFiles/imgui.dir/imgui_impl_opengl3.cpp.o: /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/abcg/external/imgui/imgui_impl_opengl3.cpp
abcg/external/imgui/CMakeFiles/imgui.dir/imgui_impl_opengl3.cpp.o: abcg/external/imgui/CMakeFiles/imgui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object abcg/external/imgui/CMakeFiles/imgui.dir/imgui_impl_opengl3.cpp.o"
	cd /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/build/abcg/external/imgui && /usr/bin/ccache /usr/lib64/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT abcg/external/imgui/CMakeFiles/imgui.dir/imgui_impl_opengl3.cpp.o -MF CMakeFiles/imgui.dir/imgui_impl_opengl3.cpp.o.d -o CMakeFiles/imgui.dir/imgui_impl_opengl3.cpp.o -c /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/abcg/external/imgui/imgui_impl_opengl3.cpp

abcg/external/imgui/CMakeFiles/imgui.dir/imgui_impl_opengl3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/imgui_impl_opengl3.cpp.i"
	cd /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/build/abcg/external/imgui && /usr/lib64/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/abcg/external/imgui/imgui_impl_opengl3.cpp > CMakeFiles/imgui.dir/imgui_impl_opengl3.cpp.i

abcg/external/imgui/CMakeFiles/imgui.dir/imgui_impl_opengl3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/imgui_impl_opengl3.cpp.s"
	cd /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/build/abcg/external/imgui && /usr/lib64/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/abcg/external/imgui/imgui_impl_opengl3.cpp -o CMakeFiles/imgui.dir/imgui_impl_opengl3.cpp.s

# Object files for target imgui
imgui_OBJECTS = \
"CMakeFiles/imgui.dir/imgui.cpp.o" \
"CMakeFiles/imgui.dir/imgui_demo.cpp.o" \
"CMakeFiles/imgui.dir/imgui_draw.cpp.o" \
"CMakeFiles/imgui.dir/imgui_tables.cpp.o" \
"CMakeFiles/imgui.dir/imgui_widgets.cpp.o" \
"CMakeFiles/imgui.dir/imgui_impl_sdl.cpp.o" \
"CMakeFiles/imgui.dir/imgui_impl_opengl3.cpp.o"

# External object files for target imgui
imgui_EXTERNAL_OBJECTS =

abcg/external/imgui/libimgui.a: abcg/external/imgui/CMakeFiles/imgui.dir/imgui.cpp.o
abcg/external/imgui/libimgui.a: abcg/external/imgui/CMakeFiles/imgui.dir/imgui_demo.cpp.o
abcg/external/imgui/libimgui.a: abcg/external/imgui/CMakeFiles/imgui.dir/imgui_draw.cpp.o
abcg/external/imgui/libimgui.a: abcg/external/imgui/CMakeFiles/imgui.dir/imgui_tables.cpp.o
abcg/external/imgui/libimgui.a: abcg/external/imgui/CMakeFiles/imgui.dir/imgui_widgets.cpp.o
abcg/external/imgui/libimgui.a: abcg/external/imgui/CMakeFiles/imgui.dir/imgui_impl_sdl.cpp.o
abcg/external/imgui/libimgui.a: abcg/external/imgui/CMakeFiles/imgui.dir/imgui_impl_opengl3.cpp.o
abcg/external/imgui/libimgui.a: abcg/external/imgui/CMakeFiles/imgui.dir/build.make
abcg/external/imgui/libimgui.a: abcg/external/imgui/CMakeFiles/imgui.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX static library libimgui.a"
	cd /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/build/abcg/external/imgui && $(CMAKE_COMMAND) -P CMakeFiles/imgui.dir/cmake_clean_target.cmake
	cd /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/build/abcg/external/imgui && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/imgui.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
abcg/external/imgui/CMakeFiles/imgui.dir/build: abcg/external/imgui/libimgui.a
.PHONY : abcg/external/imgui/CMakeFiles/imgui.dir/build

abcg/external/imgui/CMakeFiles/imgui.dir/clean:
	cd /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/build/abcg/external/imgui && $(CMAKE_COMMAND) -P CMakeFiles/imgui.dir/cmake_clean.cmake
.PHONY : abcg/external/imgui/CMakeFiles/imgui.dir/clean

abcg/external/imgui/CMakeFiles/imgui.dir/depend:
	cd /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/abcg/external/imgui /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/build /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/build/abcg/external/imgui /home/maracaja/Programacao/CG/Atividade2/atividade2/Carros/build/abcg/external/imgui/CMakeFiles/imgui.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : abcg/external/imgui/CMakeFiles/imgui.dir/depend

