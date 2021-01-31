/**
 * Minimal lexer for Go
 */
%{
#include "parser/goparser.h"
%}

%option reentrant bison-bridge noyywrap

%%

"=" { return ASSIGN; }
"{" { return L_CURLY; }
"}" { return R_CURLY; }

%%
