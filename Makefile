main: main.c lex.yy.c
	gcc -o main main.c

lex.yy.c: arithmetic.l
	flex arithmetic.l
