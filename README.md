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

Análisis de los resultados

Al correr el programa con un archivo que contiene varias líneas, vemos que identifica bien los números complejos en formatos correctos, como:

3+4i

4i+3

-3.5-2J

i+3

Estos casos imprimen ACEPTA, mostrando que las reglas están capturando correctamente los patrones válidos.

En cambio, cuando la línea tiene formatos que no cumplen las reglas —como notación científica (45e+3) o expresiones con símbolos de multiplicación (3*i)— el programa responde con NO ACEPTA, lo que indica que esos formatos no coinciden con el patrón esperado.

Esto confirma que el programa filtra correctamente y solo reconoce números complejos en las formas definidas, evitando falsos positivos con formatos inválidos o textos que no representan números complejos.


