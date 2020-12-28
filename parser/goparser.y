/**
 * Minimal parser for Go
 */
%{
#include <stdio.h>

#include "parser/wk_state.h"

void yyerror(parser_state_t* p, const char* s);
%}

%code requires {
  #include "parser/wk_state.h"
}

%define api.pure full
%parse-param {parser_state_t* p}

%token NUM

%%

program
  : statement_list
  ;

statement_list
  : /* empty */
  | statement_list statement
  ;

statement
  : NUM
  ;

%%

void yyerror(parser_state_t* p, const char* s) {
  printf(s);
}
