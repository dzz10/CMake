#
# check if the compiler supports std:: on stl classes
#
# CMAKE_NO_STD_NAMESPACE - defined accoreding to the results
#

IF(NOT CMAKE_STD_NAMESPACE)
  MESSAGE(STATUS "Check for STD namespace")
  TRY_COMPILE(CMAKE_STD_NAMESPACE  ${CMAKE_BINARY_DIR} 
    ${CMAKE_ROOT}/Modules/TestForSTDNamespace.cxx)
  IF (CMAKE_STD_NAMESPACE)
    MESSAGE(STATUS "Check for STD namespace - found")
    SET (CMAKE_NO_STD_NAMESPACE 0 CACHE INTERNAL 
         "Does the compiler support std::.")
  ELSE (CMAKE_STD_NAMESPACE)
    MESSAGE(STATUS "Check for STD namespace - not found")
    SET (CMAKE_NO_STD_NAMESPACE 1 CACHE INTERNAL 
       "Does the compiler support std::.")
  ENDIF (CMAKE_STD_NAMESPACE)
ENDIF(NOT CMAKE_STD_NAMESPACE)



