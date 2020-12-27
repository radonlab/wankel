/**
 * Minimal parser for Go
 */
%{
#include <stdio.h>

#include "parser/wk_state.h"

typedef wk_state_t parser_state_t;
%}

%define api.pure full

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
}
