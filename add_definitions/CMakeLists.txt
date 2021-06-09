cmake_minimum_required(VERSION 3.5)


project (test_definition)
add_definitions(-DTEST_DEF)
add_definitions(-DDEFINITION_VALUE=5)
add_executable(test_definition main.cpp)
