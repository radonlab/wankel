/**
 * Minimal lexer for Go
 */
%{

enum wk_token_type {
  L_CURLY,
  R_CURLY,
};

%}

%option noyywrap

%%

"{" { return L_CURLY; }
"}" { return R_CURLY; }

%%
