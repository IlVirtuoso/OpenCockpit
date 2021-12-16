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
find_package(Qt5 COMPONENTS Core REQUIRED)

add_executable (CarCockpit ${ckp_source_files} ${ckp_header_files})

target_include_directories(CarCockpit PUBLIC aasdk "./include")



target_link_libraries(CarCockpit Qt5::Core aasdk)


# TODO: Aggiungere i test e, se necessario, installare le destinazioni.
