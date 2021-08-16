cmake_minimum_required(VERSION 3.10)

project(h-sql)

add_executable(h-sql
               db.c
               hashdb.c  
)
