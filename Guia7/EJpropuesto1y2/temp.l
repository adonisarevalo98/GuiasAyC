%{ 
#include <stdlib.h> 
#include "temp.tab.h" 
%} 
real   "-"?[0-9]+"."[0-9]+ 
%% 
°F|°C|°K                 {return      tempfck;}                 
{real}            {yylval.valFloat = atof(yytext); return tvaltemp;}
