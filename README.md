# COMPLEJOS

**INTRODUCCION**

Este proyecto usa Lex para detectar números complejos escritos en texto, como 3+4i o -2.5J+7. Lee un archivo línea por línea y te dice si cada línea es válida o no. Es una forma práctica y sencilla de entender cómo reconocer patrones en texto con expresiones regulares y Lex.

**COMO FUNCIONAN**

Básicamente, definí patrones para reconocer:

-Números reales con o sin signo y con decimales (por ejemplo, -3.14 o 5)

-La letra que representa la parte imaginaria (puede ser i, I, j o J)

-El signo + o - que conecta la parte real con la imaginaria

-Que la unidad imaginaria pueda estar antes o después del número real

Después, con reglas sencillas, el programa revisa cada línea del archivo y dice si acepta o no acepta esa línea como número complejo.

**COMO EJECUTARLO**

Paso 1, compilas el programa:

flex COMPLEJOS.l
gcc lex.yy.c -o COMPLEJOS -lfl

Paso 2, creas un archivo Entrada.txt con las líneas que quieres probar, por ejemplo:

3+4i

4i+3

-3.5-2J

i+3

45e+3

3*i

Paso 3 lo corres así:

./COMPLEJOS Entrada.txt

**RESULTADOS**

estos fueron la lista de numeros que se usaron:


