%{
#include "calcu.tab.h"
#include <stdio.h>
#include <stdlib.h>
%}
/* Descomentar si hay error: %option noyywrap*/


	/* ------------ Reglas ------------*/
FLOATV [0-9]+\.[0-9]+
INTV [0-9]+
%%

{INTV}        {
                     yylval.INTV = atoi(yytext);
                     return  ENTERO;
                       }
{FLOATV}        {
                     yylval.FLOATV = atof(yytext);
                     return  FLOTANTE;
                       }


"+"|"-"|"*"|"/"   {
                 return (yytext[0]);
                 }

 "\n"       {
                return (yytext[0]);
                }

%%