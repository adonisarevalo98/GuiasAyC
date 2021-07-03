%{
    #include <stdio.h>
    #include "f1.tab.h"
%}

integer [1-9][0-9]*|0
float [0-9]+\.[0-9]+

%%

{integer}   { yylval.ival = atoi(yytext); return INT; }
{float}     { yylval.fval = atof(yytext); return FLOAT; }
.           { return yytext[0]; }

%%