%{
#include <stdio.h>
%}

%%
[0-9]+ printf("TOK_NUMBER(%s)\n", yytext);
"+"    printf("TOK_PLUS()\n");
"-"    printf("TOK_MINUS()\n");
"*"    printf("TOK_TIMES()\n");
"/"    printf("TOK_DIVIDE()\n");
\n     printf("TOK_EOL()\n");
[ \t]+ {}

. {
  fprintf(stderr, "Invalid '%s'\n", yytext);
  exit(1);
}
%%
