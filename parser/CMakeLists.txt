find_package(FLEX REQUIRED)
find_package(BISON REQUIRED)

FLEX_TARGET(golexer golexer.l ${CMAKE_CURRENT_BINARY_DIR}/golexer.c)
BISON_TARGET(goparser goparser.y ${CMAKE_CURRENT_BINARY_DIR}/goparser.c)

add_library(wankel_parser OBJECT
  ${FLEX_golexer_OUTPUTS}
  ${BISON_goparser_OUTPUTS}
)

target_include_directories(wankel_parser PUBLIC ${CMAKE_BINARY_DIR})
