#ifndef WANKEL_PARSER_WK_STATE_H_
#define WANKEL_PARSER_WK_STATE_H_

typedef struct wk_state {
  void* lex;
} wk_state_t;

typedef wk_state_t parser_state_t;

int wk_parse(wk_state_t* p, FILE* fp);

#endif  // WANKEL_PARSER_WK_STATE_H_
