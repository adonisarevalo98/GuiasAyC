%{ 
#include <stdlib.h> 
#include "y.tab.h" 
%} 
entero "-"?[0-9]+
real   "-"?[0-9]+"."[0-9]+ 
%% 
C                  {return      tCentigrados;}
F                  {return      tFarenheit;}                 
{entero}H         {yylval.valInt = atoi(yytext); return tHora;} 
{real}            {yylval.valFloat = atof(yytext); return tValorTemperatura;}
.                  ;     
\n                  ;