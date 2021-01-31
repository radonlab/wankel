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
%parse-param {void* p}
%lex-param {void* p}

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

void yyerror(parser_state_t* p, const char* s) {
  printf(s);
}

int wk_parse(parser_state_t* p, FILE* fp) {
  yylex_init(&ps->lex);
  yyset_in(fp, ps->lex);
  yyparse(ps->lex);
  yylex_destroy(ps->lex);
  return 0;
}
