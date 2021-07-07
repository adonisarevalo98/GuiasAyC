




    Programa que solicita el correo electronico y contraseña de un usuario
   - El correo debe cumplir con el estandar tradicional
   - Dependiendo de los parametros ingresados en la contraseña saltarán las siguientes alertas:
             * solo letras (password basico)
             * letras y numeros (password medio)
             * letras, numeros y caracteres especiales (password avanzado)

  Compilacion:
  - bison -d ejercicio2.y
  - flex ejercicio2.l
  - gcc -o ejercicio2 ejercicio2.tab.c lex.yy.c -lm