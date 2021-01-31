#ifndef WANKEL_PARSER_WK_STATE_H_
#define WANKEL_PARSER_WK_STATE_H_

typedef int wk_lexer_t;

typedef struct wk_state {
  wk_lexer_t* lex;
} wk_state_t;

int wk_parse(wk_state_t* state, FILE* source);

#endif  // WANKEL_PARSER_WK_STATE_H_
