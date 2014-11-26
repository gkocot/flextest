.PHONY: clean

all: flextest

flextest: lexer.c parser.c main.cpp
	g++ $^ -o $@ -lfl

lexer.c: lexer.l
	flex -o $@ $<

parser.c parser.h: parser.y
	bison -d -o $@ $<

clean:
	-rm flextest
	-rm lexer.c
	-rm parser.c
	-rm parser.h
