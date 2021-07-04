



    Simulador de calculadora con BISON
    Sumas, Restas, Multiplicaciones y Diviciones con numeros enteros y decimales

Compilacion:
 - bison -d calcu.y
- flex calcu.l
- gcc -o calcu calcu.tab.c lex.yy.c -lm
