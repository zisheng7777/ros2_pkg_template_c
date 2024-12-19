foreach(LIB_PATH ${LIB_PATHS})
    file(GLOB LIB_CPP ${LIB_PATH}/*)

    get_filename_component(LIB_NAME ${LIB_PATH} NAME)

    add_library(${LIB_NAME}_lib ${LIB_CPP})

    ament_target_dependencies(${LIB_NAME}_lib
        rclcpp
        std_msgs
    )
endforeach()
