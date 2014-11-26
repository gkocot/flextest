%{
#include <cstdio>
#include <iostream>

extern "C" int yylex();
extern "C" int yyparse();
extern "C" FILE *yyin;
 
void yyerror(const char *s);

static unsigned int line = 0;
%}

%token INT

%%

input:
    %empty
    | input line
    ;

line:
    | INT '+' INT '=' INT   { std::cout << line++ << ": " << $1 << "+" << $3 << "=" << $5 << ($1 + $3 == $5 ? " OK" : " ERROR") << std::endl; }
    ;
    

%%

void yyerror(const char *s) {
    std::cout << "EEK, parse error!  Message: " << s << std::endl;
    // might as well halt now:
    exit(-1);
}
