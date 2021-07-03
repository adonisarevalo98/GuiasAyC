%{
#include "calculadora.tab.h"
%}
NUM [0-9]+
%%
{NUM}           {
        yylval = atoi(yytext);
        return (ENTERO);
        }
"+"|"-" {
        return (yytext[0]);
        }
 "\n"            
        {
        return (yytext[0]);
        }
.     ;
%%