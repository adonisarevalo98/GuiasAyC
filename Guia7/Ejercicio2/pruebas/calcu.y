%{
    #include <stdio.h>
%}

%union {
    int ival;
    float fval;
}
%token <ival> INT
%token <fval> FLOAT


%type <fval> exp
%type <fval> fac
%type <fval> f

%%
input: line
    | input line
;

line: exp ';'  { printf("%d\n", $1); };

exp: fac             { $$ = $1;         }
  | exp '+' fac     { $$ = $1 + $3;    }
  | exp '-' fac     { $$ = $1 - $3; }
;
fac: f
    | fac '*' f     { $$ = $1 * $3; }
    | fac '/' f     { $$ = $1 / $3; }
;
f: INT | FLOAT;
f: INT { $$ = (double)$1; }
%%
main(int argc, char **argv) {
    yyparse();
}
yyerror(char *s) {
    fprintf(stderr, "error: %s\n", s);
}