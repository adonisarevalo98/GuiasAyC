%{ 
#include <stdlib.h>
#include <stdio.h>
#define YYSTYPE char*
%} 
%start input
%token valEmail valBasica valMedia valAvanzada
%% 
input :  Validacorreo  {}
                
                
    ;
Validacorreo :   valEmail {printf("\n\t****** EMAIL CORRECTO *****"); 
                                                   }
                                    solicitudpw Validapassword   
     ;

Validapassword: valBasica {printf("\t****** PASSWORD NIVEL BASICO *****");} 
                      | valMedia {printf("\t****** PASSWORD NIVEL INTERMEDIO *****");} 
                      | valAvanzada {printf("\t****** PASSWORD NIVEL AVANZADO *****");} 
    ;
solicitudpw:  {
 printf("\n\n\t* INGRESE SU PASSWORD: *"); 
}
;
%%
main() {
printf("\n");
printf("\t* INGRESE SU EMAIL: *");
printf("\n");
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