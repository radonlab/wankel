find_package(FLEX REQUIRED)
find_package(BISON REQUIRED)

FLEX_TARGET(wk_lexer wk_lexer.l ${CMAKE_CURRENT_BINARY_DIR}/wk_lexer.c)
BISON_TARGET(wk_parser wk_parser.y ${CMAKE_CURRENT_BINARY_DIR}/wk_parser.c)

add_library(wankel_parser OBJECT
  ${FLEX_wk_lexer_OUTPUTS}
  ${BISON_wk_parser_OUTPUTS}
)

target_include_directories(wankel_parser PUBLIC ${CMAKE_BINARY_DIR})
