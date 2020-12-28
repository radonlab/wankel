/**
 * Minimal lexer for Go
 */
%{

typedef enum wk_token_type {
  L_CURLY,
  R_CURLY,
} wk_token_type_t;

%}

%option noyywrap

%%

"{" { return L_CURLY; }
"}" { return R_CURLY; }

%%
