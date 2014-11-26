.PHONY: clean

all: flextest

flextest: lexer.c main.cpp
	g++ $^ -o $@ -lfl

lexer.c: lexer.l
	flex -o $@ $<

clean:
	rm flextest
	rm lexer.c
