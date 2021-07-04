%{ 
#include <math.h>
#include <stdio.h>
int contmedidas = 0; 
double sumtemps=0.00;
%} 
%union{ 
float valFloat; 
} 
%token tempfarenheit  
%token <valFloat> tvaltemp
%type <valFloat> CONVERTTEMP MEDICION LIST_TEMP
%start S 
%% 
S : LIST_TEMP { } 
;
LIST_TEMP : LIST_TEMP MEDICION {$$ = $1 + $2; contmedidas++;}          
               | MEDICION {$$ = $1; contmedidas++;}  
               ;
MEDICION :  CONVERTTEMP{ 
  printf ("Temperatura en celcius: %f °C\n", $1);    
printf ("Temperatura en kelvin: %f °K\n", $1+273.15);    
 sumtemps+=$1;
if (contmedidas == 2) {          
                         printf("\n");
                         printf("\t********Temperatura promedio en celcius: %3.2f °C\n", sumtemps/(float)(contmedidas+1));             
sumtemps=0;
contmedidas=-1;         
          }   
$$ = $1;  
}        
;
CONVERTTEMP : tvaltemp tempfarenheit   {$$ = (($1 - 32.0) * 5.0) / 9.0;}             

            ;
%%
main() {
yyparse();
}
yyerror (char *s)
{
printf ("%s\n", s);
}
int yywrap() 
{ 
return 1; 
}