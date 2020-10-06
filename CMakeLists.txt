cmake_minimum_required(VERSION 3.16.3)

project("Calculator" VERSION 0.0.1 LANGUAGES CXX)
set(LINKER_LANGUAGE CXX)

add_executable("${PROJECT_NAME}" main.cpp)
target_link_libraries("${PROJECT_NAME}" ./lib/calculator.so)
