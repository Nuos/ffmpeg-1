#Find Papillon library
#Defines
#   PAPILLON_FOUND
#   PAPILLON_INSTALL_DIR
#   PAPILLON_LIBRARIES
#   PAPILLON_INCLUDE_DIRS

include(FindPackageHandleStandardArgs)

find_path(PAPILLON_INSTALL_DIR
    NAMES include/PapillonCore/PapillonCore.h
    HINTS $ENV{PAPILLON_INSTALL_DIR}
    PATH_SUFFIXES /usr/local
)
 
find_library(PAPILLON_LIBRARIES NAMES PapillonCore
             PATHS ${PAPILLON_INSTALL_DIR}/lib NO_DEFAULT_PATH)

set(PAPILLON_INCLUDE_DIRS ${PAPILLON_INSTALL_DIR}/include/PapillonCore)

find_package_handle_standard_args(PAPILLON DEFAULT_MSG PAPILLON_INSTALL_DIR PAPILLON_LIBRARIES PAPILLON_INCLUDE_DIRS)
