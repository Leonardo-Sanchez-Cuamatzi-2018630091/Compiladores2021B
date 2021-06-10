%token CHAR SHORT INT LONG SIGNED UNSIGNED FLOAT DOUBLE CONST VOLATILE VOID

%token  IF ELSE  WHILE DO RETURN

%{
    #include <stdio.h>

    void yyerror(char *mensaje)
    {
        printf("Error: %s", mensaje);
    }

    IF()
    {
	printf("Ver la condicional");
    }
%}

%token NUMERO ENTER OR INT
%%
x:
%empty
;
linea: '\n'
;
linea: expresion ENTER
;
linea: expresion_condicional ENTER
;
linea: declaracion ENTER
;
expresion: expresion expresion '+'
;
expresion: expresion expresion '*'
;
expresion: expresion expresion '/'
;
expresion: expresion expresion '-'
;
expresion: NUMERO
;
expresion_condicional: expresion expresion_or expresion
;
expresion_or: OR
;
declaracion: entero NUMERO;
;
entero INT
;
%%

int(void)
{
	yyparse();
	return 0;
}
