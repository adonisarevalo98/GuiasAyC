%{ 
#include <stdlib.h> 
#include "ejercicio1.tab.h" 
%} 
real   "-"?[0-9]+"."[0-9]+ 
%% 
°F                  {return      tempfarenheit;}                 
{real}            {yylval.valFloat = atof(yytext); return tvaltemp;}
