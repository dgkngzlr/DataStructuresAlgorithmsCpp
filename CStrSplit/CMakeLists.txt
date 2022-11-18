cmake_minimum_required(VERSION 3.10)

project(CStrSplit)

add_executable(${PROJECT_NAME} main.c)

message(STATUS ">>> ${PROJECT_NAME}")

if(CMAKE_SYSTEM_NAME STREQUAL "Linux")
  # Linux-specific options
  target_compile_options(${PROJECT_NAME} PRIVATE -Wall -Wextra -Werror)
elseif(CMAKE_SYSTEM_NAME STREQUAL "Windows")
    # Windows-specific options
    target_compile_options(${PROJECT_NAME} PRIVATE /W4 /Wall)
endif ()