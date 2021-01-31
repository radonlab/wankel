/**
 * Minimal parser for Go
 */
%{
#include <stdio.h>

#include "parser/wk_state.h"

void yyerror(wk_lexer_t* lexer, const char* message);
%}

%code requires {
  #include "parser/wk_state.h"
}

%define api.pure full
%parse-param {wk_lexer_t* lexer}
%lex-param {wk_lexer_t* lexer}

%token ASSIGN
%token L_CURLY;
%token R_CURLY;

%%

program
  : statement_list
  ;

statement_list
  : %empty
  | statement_list statement
  ;

statement
  : ASSIGN
  ;

%%

void yyerror(wk_lexer_t* lexer, const char* message) {
  printf(message);
}

int wk_parse(wk_state_t* state, FILE* source) {
  yylex_init(&state->lex);
  yyset_in(source, state->lex);
  yyparse(state->lex);
  yylex_destroy(state->lex);
  return 0;
}
