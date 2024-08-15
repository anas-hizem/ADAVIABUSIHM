# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "ADAVIABUS-IHM_autogen"
  "CMakeFiles/ADAVIABUS-IHM_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/ADAVIABUS-IHM_autogen.dir/ParseCache.txt"
  )
endif()
