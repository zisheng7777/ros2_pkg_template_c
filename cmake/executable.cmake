# add_executable(<name> <options>... <sources>...)
# used to specify the name of the executable file and the path of the source code
add_executable(test_node src/test/test.cpp)
add_executable(minimal_publisher src/test/publisher.cpp)

install(TARGETS
    test_node
    minimal_publisher
    DESTINATION lib/${PROJECT_NAME}/
)