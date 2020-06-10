# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
CMAKE_COMMAND = /snap/clion/114/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/114/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tal/Desktop/C++/Exercises/Wargame

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tal/Desktop/C++/Exercises/Wargame/cmake-build-debug

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/snap/clion/114/bin/cmake/linux/bin/cmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/snap/clion/114/bin/cmake/linux/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/tal/Desktop/C++/Exercises/Wargame/cmake-build-debug/CMakeFiles /home/tal/Desktop/C++/Exercises/Wargame/cmake-build-debug/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/tal/Desktop/C++/Exercises/Wargame/cmake-build-debug/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named Wargame

# Build rule for target.
Wargame: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 Wargame
.PHONY : Wargame

# fast build rule for target.
Wargame/fast:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/build
.PHONY : Wargame/fast

Board.o: Board.cpp.o

.PHONY : Board.o

# target to build an object file
Board.cpp.o:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/Board.cpp.o
.PHONY : Board.cpp.o

Board.i: Board.cpp.i

.PHONY : Board.i

# target to preprocess a source file
Board.cpp.i:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/Board.cpp.i
.PHONY : Board.cpp.i

Board.s: Board.cpp.s

.PHONY : Board.s

# target to generate assembly for a file
Board.cpp.s:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/Board.cpp.s
.PHONY : Board.cpp.s

DemoGame.o: DemoGame.cpp.o

.PHONY : DemoGame.o

# target to build an object file
DemoGame.cpp.o:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/DemoGame.cpp.o
.PHONY : DemoGame.cpp.o

DemoGame.i: DemoGame.cpp.i

.PHONY : DemoGame.i

# target to preprocess a source file
DemoGame.cpp.i:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/DemoGame.cpp.i
.PHONY : DemoGame.cpp.i

DemoGame.s: DemoGame.cpp.s

.PHONY : DemoGame.s

# target to generate assembly for a file
DemoGame.cpp.s:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/DemoGame.cpp.s
.PHONY : DemoGame.cpp.s

FootCommander.o: FootCommander.cpp.o

.PHONY : FootCommander.o

# target to build an object file
FootCommander.cpp.o:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/FootCommander.cpp.o
.PHONY : FootCommander.cpp.o

FootCommander.i: FootCommander.cpp.i

.PHONY : FootCommander.i

# target to preprocess a source file
FootCommander.cpp.i:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/FootCommander.cpp.i
.PHONY : FootCommander.cpp.i

FootCommander.s: FootCommander.cpp.s

.PHONY : FootCommander.s

# target to generate assembly for a file
FootCommander.cpp.s:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/FootCommander.cpp.s
.PHONY : FootCommander.cpp.s

FootSoldier.o: FootSoldier.cpp.o

.PHONY : FootSoldier.o

# target to build an object file
FootSoldier.cpp.o:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/FootSoldier.cpp.o
.PHONY : FootSoldier.cpp.o

FootSoldier.i: FootSoldier.cpp.i

.PHONY : FootSoldier.i

# target to preprocess a source file
FootSoldier.cpp.i:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/FootSoldier.cpp.i
.PHONY : FootSoldier.cpp.i

FootSoldier.s: FootSoldier.cpp.s

.PHONY : FootSoldier.s

# target to generate assembly for a file
FootSoldier.cpp.s:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/FootSoldier.cpp.s
.PHONY : FootSoldier.cpp.s

Paramedic.o: Paramedic.cpp.o

.PHONY : Paramedic.o

# target to build an object file
Paramedic.cpp.o:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/Paramedic.cpp.o
.PHONY : Paramedic.cpp.o

Paramedic.i: Paramedic.cpp.i

.PHONY : Paramedic.i

# target to preprocess a source file
Paramedic.cpp.i:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/Paramedic.cpp.i
.PHONY : Paramedic.cpp.i

Paramedic.s: Paramedic.cpp.s

.PHONY : Paramedic.s

# target to generate assembly for a file
Paramedic.cpp.s:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/Paramedic.cpp.s
.PHONY : Paramedic.cpp.s

ParamedicCommander.o: ParamedicCommander.cpp.o

.PHONY : ParamedicCommander.o

# target to build an object file
ParamedicCommander.cpp.o:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/ParamedicCommander.cpp.o
.PHONY : ParamedicCommander.cpp.o

ParamedicCommander.i: ParamedicCommander.cpp.i

.PHONY : ParamedicCommander.i

# target to preprocess a source file
ParamedicCommander.cpp.i:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/ParamedicCommander.cpp.i
.PHONY : ParamedicCommander.cpp.i

ParamedicCommander.s: ParamedicCommander.cpp.s

.PHONY : ParamedicCommander.s

# target to generate assembly for a file
ParamedicCommander.cpp.s:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/ParamedicCommander.cpp.s
.PHONY : ParamedicCommander.cpp.s

Sniper.o: Sniper.cpp.o

.PHONY : Sniper.o

# target to build an object file
Sniper.cpp.o:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/Sniper.cpp.o
.PHONY : Sniper.cpp.o

Sniper.i: Sniper.cpp.i

.PHONY : Sniper.i

# target to preprocess a source file
Sniper.cpp.i:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/Sniper.cpp.i
.PHONY : Sniper.cpp.i

Sniper.s: Sniper.cpp.s

.PHONY : Sniper.s

# target to generate assembly for a file
Sniper.cpp.s:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/Sniper.cpp.s
.PHONY : Sniper.cpp.s

SniperCommander.o: SniperCommander.cpp.o

.PHONY : SniperCommander.o

# target to build an object file
SniperCommander.cpp.o:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/SniperCommander.cpp.o
.PHONY : SniperCommander.cpp.o

SniperCommander.i: SniperCommander.cpp.i

.PHONY : SniperCommander.i

# target to preprocess a source file
SniperCommander.cpp.i:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/SniperCommander.cpp.i
.PHONY : SniperCommander.cpp.i

SniperCommander.s: SniperCommander.cpp.s

.PHONY : SniperCommander.s

# target to generate assembly for a file
SniperCommander.cpp.s:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/SniperCommander.cpp.s
.PHONY : SniperCommander.cpp.s

Soldier.o: Soldier.cpp.o

.PHONY : Soldier.o

# target to build an object file
Soldier.cpp.o:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/Soldier.cpp.o
.PHONY : Soldier.cpp.o

Soldier.i: Soldier.cpp.i

.PHONY : Soldier.i

# target to preprocess a source file
Soldier.cpp.i:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/Soldier.cpp.i
.PHONY : Soldier.cpp.i

Soldier.s: Soldier.cpp.s

.PHONY : Soldier.s

# target to generate assembly for a file
Soldier.cpp.s:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/Soldier.cpp.s
.PHONY : Soldier.cpp.s

TestCounter.o: TestCounter.cpp.o

.PHONY : TestCounter.o

# target to build an object file
TestCounter.cpp.o:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/TestCounter.cpp.o
.PHONY : TestCounter.cpp.o

TestCounter.i: TestCounter.cpp.i

.PHONY : TestCounter.i

# target to preprocess a source file
TestCounter.cpp.i:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/TestCounter.cpp.i
.PHONY : TestCounter.cpp.i

TestCounter.s: TestCounter.cpp.s

.PHONY : TestCounter.s

# target to generate assembly for a file
TestCounter.cpp.s:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/TestCounter.cpp.s
.PHONY : TestCounter.cpp.s

TestRunner.o: TestRunner.cpp.o

.PHONY : TestRunner.o

# target to build an object file
TestRunner.cpp.o:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/TestRunner.cpp.o
.PHONY : TestRunner.cpp.o

TestRunner.i: TestRunner.cpp.i

.PHONY : TestRunner.i

# target to preprocess a source file
TestRunner.cpp.i:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/TestRunner.cpp.i
.PHONY : TestRunner.cpp.i

TestRunner.s: TestRunner.cpp.s

.PHONY : TestRunner.s

# target to generate assembly for a file
TestRunner.cpp.s:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/TestRunner.cpp.s
.PHONY : TestRunner.cpp.s

Test_Oz.o: Test_Oz.cpp.o

.PHONY : Test_Oz.o

# target to build an object file
Test_Oz.cpp.o:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/Test_Oz.cpp.o
.PHONY : Test_Oz.cpp.o

Test_Oz.i: Test_Oz.cpp.i

.PHONY : Test_Oz.i

# target to preprocess a source file
Test_Oz.cpp.i:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/Test_Oz.cpp.i
.PHONY : Test_Oz.cpp.i

Test_Oz.s: Test_Oz.cpp.s

.PHONY : Test_Oz.s

# target to generate assembly for a file
Test_Oz.cpp.s:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/Test_Oz.cpp.s
.PHONY : Test_Oz.cpp.s

Test_amichai.o: Test_amichai.cpp.o

.PHONY : Test_amichai.o

# target to build an object file
Test_amichai.cpp.o:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/Test_amichai.cpp.o
.PHONY : Test_amichai.cpp.o

Test_amichai.i: Test_amichai.cpp.i

.PHONY : Test_amichai.i

# target to preprocess a source file
Test_amichai.cpp.i:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/Test_amichai.cpp.i
.PHONY : Test_amichai.cpp.i

Test_amichai.s: Test_amichai.cpp.s

.PHONY : Test_amichai.s

# target to generate assembly for a file
Test_amichai.cpp.s:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/Test_amichai.cpp.s
.PHONY : Test_amichai.cpp.s

Test_oriane_yirat.o: Test_oriane_yirat.cpp.o

.PHONY : Test_oriane_yirat.o

# target to build an object file
Test_oriane_yirat.cpp.o:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/Test_oriane_yirat.cpp.o
.PHONY : Test_oriane_yirat.cpp.o

Test_oriane_yirat.i: Test_oriane_yirat.cpp.i

.PHONY : Test_oriane_yirat.i

# target to preprocess a source file
Test_oriane_yirat.cpp.i:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/Test_oriane_yirat.cpp.i
.PHONY : Test_oriane_yirat.cpp.i

Test_oriane_yirat.s: Test_oriane_yirat.cpp.s

.PHONY : Test_oriane_yirat.s

# target to generate assembly for a file
Test_oriane_yirat.cpp.s:
	$(MAKE) -f CMakeFiles/Wargame.dir/build.make CMakeFiles/Wargame.dir/Test_oriane_yirat.cpp.s
.PHONY : Test_oriane_yirat.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... Wargame"
	@echo "... Board.o"
	@echo "... Board.i"
	@echo "... Board.s"
	@echo "... DemoGame.o"
	@echo "... DemoGame.i"
	@echo "... DemoGame.s"
	@echo "... FootCommander.o"
	@echo "... FootCommander.i"
	@echo "... FootCommander.s"
	@echo "... FootSoldier.o"
	@echo "... FootSoldier.i"
	@echo "... FootSoldier.s"
	@echo "... Paramedic.o"
	@echo "... Paramedic.i"
	@echo "... Paramedic.s"
	@echo "... ParamedicCommander.o"
	@echo "... ParamedicCommander.i"
	@echo "... ParamedicCommander.s"
	@echo "... Sniper.o"
	@echo "... Sniper.i"
	@echo "... Sniper.s"
	@echo "... SniperCommander.o"
	@echo "... SniperCommander.i"
	@echo "... SniperCommander.s"
	@echo "... Soldier.o"
	@echo "... Soldier.i"
	@echo "... Soldier.s"
	@echo "... TestCounter.o"
	@echo "... TestCounter.i"
	@echo "... TestCounter.s"
	@echo "... TestRunner.o"
	@echo "... TestRunner.i"
	@echo "... TestRunner.s"
	@echo "... Test_Oz.o"
	@echo "... Test_Oz.i"
	@echo "... Test_Oz.s"
	@echo "... Test_amichai.o"
	@echo "... Test_amichai.i"
	@echo "... Test_amichai.s"
	@echo "... Test_oriane_yirat.o"
	@echo "... Test_oriane_yirat.i"
	@echo "... Test_oriane_yirat.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

