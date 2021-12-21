# CMakeList.txt: progetto CMake per CarCockpit. Includere l'origine e definire
# qui la logica specifica del progetto.
#
cmake_minimum_required (VERSION 3.8)

# Aggiungere l'origine all'eseguibile di questo progetto


set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)


file(GLOB ckp_source_files ./src/*.cpp)
file(GLOB ckp_header_files "./include/*.h")


find_package(Qt5 COMPONENTS Core Widgets Concurrent REQUIRED)


add_executable (CarCockpit ${ckp_source_files} ${ckp_header_files})

get_directory_property(AASDK_PROTO_INCLUDE_DIRS DIRECTORY ${CMAKE_SOURCE_DIR}/aasdk DEFINITION  "AASDK_PROTO_INCLUDE_DIRS")

get_directory_property(AASDK_INCLUDE_DIRS DIRECTORY ${CMAKE_SOURCE_DIR}/aasdk DEFINITION  "include_directory")

message("aasdk include"  ${AASDK_INCLUDE_DIRS})

message("aasdk proto include"  ${AASDK_PROTO_INCLUDE_DIRS})

set(CPK_INCLUDE_DIRS ${CMAKE_CURRENT_SOURCE_DIR}/include)

target_include_directories(CarCockpit PUBLIC ${AASDK_PROTO_INCLUDE_DIRS} ${AASDK_INCLUDE_DIRS} ${CPK_INCLUDE_DIRS})



target_link_libraries(CarCockpit Qt5::Core Qt5::Widgets Qt5::Concurrent aasdk)


# TODO: Aggiungere i test e, se necessario, installare le destinazioni.
