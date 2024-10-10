cmake_minimum_required(VERSION 3.15)

set(CMAKE_C_STANDARD 11)

project( redex
		 VERSION 0.1
		 LANGUAGES C )

include_directories(redex inc)

add_library( redex STATIC
			 src/redex.c )

add_executable(test test/test.c)

target_link_libraries(test redex)
