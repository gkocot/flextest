#include <iostream>

extern "C" int yylex();

int main() {
    return yylex();
}

