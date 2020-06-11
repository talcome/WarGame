cmake_minimum_required(VERSION 3.16)
project(Wargame)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(Wargame
        Board.cpp
        Board.hpp
        DemoGame.cpp
        DemoGame.hpp
        doctest.h
        FootCommander.cpp
        FootCommander.hpp
        FootSoldier.cpp
        FootSoldier.hpp
        Paramedic.cpp
        Paramedic.hpp
        ParamedicCommander.cpp
        ParamedicCommander.hpp
        Sniper.cpp
        Sniper.hpp
        SniperCommander.cpp
        SniperCommander.hpp
        Soldier.hpp
        Test_amichai.cpp
        Test_oriane_yirat.cpp
        Test_Oz.cpp
        TestCounter.cpp
        TestRunner.cpp)
