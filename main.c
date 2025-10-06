#include "lex.yy.c"

int yywrap(void) { return 0; };

int main(void) {
  yylex();
  return 0;
}
