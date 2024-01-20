cmake_minimum_required(VERSION 3.10)

project(sqlite-amalgamation LANGUAGES C)

set(CMAKE_C_STANDARD 90)
set(CMAKE_C_STANDARD_REQUIRED True)

add_library(sqlite SHARED sqlite3.c)

