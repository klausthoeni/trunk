# Define version or set it from git


IF (NOT VERSION)
  IF (EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/RELEASE )
    #Release file is found
    exec_program(
      "less"
      ${CMAKE_CURRENT_SOURCE_DIR}
      ARGS "RELEASE"
      OUTPUT_VARIABLE VERSION 
    )
  ELSEIF (EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/.git/config)
    #Use git for version defining
    exec_program(
      "git"
      ${CMAKE_CURRENT_SOURCE_DIR}
      ARGS "log"
      ARGS "-n1"
      ARGS "--pretty=oneline"
      ARGS "|"
      ARGS "cut"
      ARGS "-c1-7"
      OUTPUT_VARIABLE VERSION_GIT
    )
    exec_program(
      "git"
      ${CMAKE_CURRENT_SOURCE_DIR}
      ARGS "log"
      ARGS "-n1"
      ARGS "--pretty=fuller"
      ARGS "--date=iso"
      ARGS "|"
      ARGS "grep"
      ARGS "AuthorDate"
      ARGS "|"
      ARGS "cut"
      ARGS "-c13-22"
      OUTPUT_VARIABLE VERSION_DATE
    )
    SET(VERSION "${VERSION_DATE}_git-${VERSION_GIT}")
    
    #git log -n1 --pretty=format:"%ai_%h"
  ELSEIF (EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/.bzr/branch/last-revision)
    #Use bzr for version defining
    exec_program(
      "less"
      ${CMAKE_CURRENT_SOURCE_DIR}/.bzr/branch/
      ARGS "last-revision"
      ARGS "|"
      ARGS "cut"
      ARGS "-c13-20"
      OUTPUT_VARIABLE VERSION_GIT
    )
    exec_program(
      "bzr"
      ${CMAKE_CURRENT_SOURCE_DIR}
      ARGS "log"
      ARGS "-l"
      ARGS "1"
      ARGS "--gnu-changelog"
      ARGS "|"
      ARGS "head"
      ARGS "-n1"
      ARGS "|"
      ARGS "cut"
      ARGS "-c1-10"
      OUTPUT_VARIABLE VERSION_DATE
    )
    SET(VERSION "${VERSION_DATE}_git-${VERSION_GIT}")
  ELSE (EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/.git/config )
    SET (VERSION "Unknown")
  ENDIF (EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/RELEASE )
ENDIF (NOT VERSION)


MESSAGE (STATUS "Version is set to " ${VERSION})
