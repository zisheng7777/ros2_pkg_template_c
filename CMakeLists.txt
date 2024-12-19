cmake_minimum_required(VERSION 3.8)
project(ros2_pkg_template_c)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()


#####################################
# find_package(<dependency> REQUIRED)
# find the corresponding ROS or non-ROS header and library
# ROS

find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(std_msgs REQUIRED)
# Non-ROS
# find_package(OpenCV REQUIRED)
######################################
set(DEPS_PATH
#     ${CMAKE_CURRENT_SOURCE_DIR}/deps/pid
    )
file(GLOB LIB_DIR
    ${CMAKE_CURRENT_SOURCE_DIR}/lib/*
    )
set(LIB_PATHS
    ${LIB_DIR}
    )
######################################
# include_directories([AFTER|BEFORE] [SYSTEM] dir1 [dir2 ...])
# used to specify the include path of the compiler
# ament can automatically specify ROS libraries, but cannot specify non-ROS libraries
include_directories(
    include
    ${DEPS_PATH}
    ${OpenCV_INCLUDE_DIRS}
)
######################################

# ## Declare a C++ library
include(${CMAKE_CURRENT_SOURCE_DIR}/cmake/deps.cmake)
include(${CMAKE_CURRENT_SOURCE_DIR}/cmake/lib.cmake)

# ## Declare a C++ executable
include(${CMAKE_CURRENT_SOURCE_DIR}/cmake/executable.cmake)

# ## Specify libraries to link a library or executable target against
include(${CMAKE_CURRENT_SOURCE_DIR}/cmake/link.cmake)



######################################
# can link the launch and config folders to share/${PROJECT_NAME}, 
# so that the launch and config folders can be found in the path of the executable file, 
# and there is no need to rebuild when updating launch parameters.
# ament_cmake_symlink_install_files(FILES
#     launch
#     config
#     DESTINATION share/test_node)
######################################


if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  # the following line skips the linter which checks for copyrights
  # comment the line when a copyright and license is added to all source files
  set(ament_cmake_copyright_FOUND TRUE)
  # the following line skips cpplint (only works in a git repo)
  # comment the line when this package is in a git repo and when
  # a copyright and license is added to all source files
  set(ament_cmake_cpplint_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
endif()

ament_package() # NEED to be placed last
