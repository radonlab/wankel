/**
 * Minimal lexer for Go
 */
%{
#include "parser/goparser.h"
%}

%option noyywrap

%%

"=" { return ASSIGN; }
"{" { return L_CURLY; }
"}" { return R_CURLY; }

%%
