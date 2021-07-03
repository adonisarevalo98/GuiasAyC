%{
#include <math.h>
#include <stdio.h>
%}

/* Declaraciones de BISON */
%union
{
 
  int INTV;
  double FLOATV;
}
%token <INTV> ENTERO
%token <FLOATV> FLOTANTE
%left '+' '-' '/' '*'
%type <FLOATV> exp_FLOATV
%type <INTV> exp_INTV

/* Gramática */
%%
input:    /* cadena vacía */
               | input line             
;
line:     '\n'
             | exp '\n'  {  }
;
/* SALIDA DE DATOS */
exp:     exp_INTV            {printf("\t%d\n", $1); }
              | exp_FLOATV {printf("\t%f\n", $1);}
;
/* OPERACIONES */
exp_INTV:      ENTERO               { $$ = $1;         }
   | exp_INTV '+' exp_INTV        { $$ = $1 + $3;    }
   | exp_INTV '-' exp_INTV        { $$ = $1 - $3;    }
   | exp_INTV '/' exp_INTV        { $$ = $1 / $3;    }
   | exp_INTV '*' exp_INTV        { $$ = $1 * $3;    }
;
exp_FLOATV:      FLOTANTE                 { $$ = $1;         }
   | exp_FLOATV '+' exp_FLOATV        { $$ = $1 + $3;    }
   | exp_FLOATV '-' exp_FLOATV        { $$ = $1 - $3;    }
   | exp_FLOATV '/' exp_FLOATV        { $$ = $1 / $3;    }
   | exp_FLOATV '*' exp_FLOATV        { $$ = $1 * $3;    }
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