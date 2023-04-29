find_path( LIBTIFF_INCLUDE tiffio.h PATHS ${CMAKE_CURRENT_LIST_DIR}/libtiff )  
  
set(_bits 64)
set(_suffix vs2012)
  
find_path( LIBTIFF_LIB_DEBUG libtiff.lib PATHS ${CMAKE_CURRENT_LIST_DIR}/libtiff/${_suffix}-${_bits}-dbg )
find_path( LIBTIFF_LIB_RELEASE libtiff.lib PATHS ${CMAKE_CURRENT_LIST_DIR}/libtiff/${_suffix}-${_bits}-rel )
set(Tiff_LIBRARIES debug ${LIBTIFF_LIB_DEBUG}/libtiff.lib optimized ${LIBTIFF_LIB_RELEASE}/libtiff.lib)
  
include_directories( ${LIBTIFF_INCLUDE} )

macro(AziTiff)
endmacro(AziTiff)