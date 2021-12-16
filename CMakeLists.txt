# CMakeList.txt: file di progetto CMake di primo livello. Eseguire la configurazione globale
# e includere qui i sottoprogetti.
#
cmake_minimum_required (VERSION 3.8)

project ("CarCockpit")


 
# Includere i sottoprogetti.

add_subdirectory("aasdk")
add_subdirectory ("CarCockpit")