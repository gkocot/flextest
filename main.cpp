#include <iostream>
#include <cstdio>

extern "C" int yylex();
extern "C" int yyparse();
extern "C" FILE *yyin;

int main(int argc, char *argv[]) {
    //yyin = fopen(argv[1], "r");

    //do {
        return yyparse();
    //} while (!feof(yyin));
}

