%{
#include <iostream>
#define YY_DECL extern "C" int yylex()

#include "parser.h"

%}
%%
[ \t]           {}
[0-9]+          { yylval = atoi(yytext); return INT; }
.               { return *yytext; }
%%
