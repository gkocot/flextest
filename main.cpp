#include <iostream>
#include <cstdio>

extern "C" int yylex();
extern "C" int yyparse();
extern "C" FILE *yyin;

int main(int argc, char *argv[]) {
    return yyparse();
}

