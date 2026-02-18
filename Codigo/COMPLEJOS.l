%{
#include <stdio.h>
#include <stdlib.h>
%}

REAL    [+-]?[0-9]+(\.[0-9]+)?
SIGNO   [+-]
IMAG    [iIjJ]

%%

^{REAL}{SIGNO}{REAL}{IMAG}$     { printf("ACEPTA"); }
^{REAL}{IMAG}{SIGNO}{REAL}$     { printf("ACEPTA"); }
^{IMAG}{SIGNO}{REAL}$		{ printf("ACEPTA"); }
^{REAL}{SIGNO}{IMAG}$		{ printf("ACEPTA"); }
.*                              { printf("NO ACEPTA"); }

%%

int main(int argc, char *argv[]) {

    if (argc != 2) {
        printf("Uso: ./COMPLEJOS archivo.txt");
        return 1;
    }

    FILE *archivo = fopen(argv[1], "r");
    if (!archivo) {
        printf("Error al abrir el archivo");
        return 1;
    }

    yyin = archivo;
    yylex();

    fclose(archivo);
    return 0;
}

int yywrap() {
    return 1;
}
