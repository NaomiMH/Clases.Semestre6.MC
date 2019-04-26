/* Tarea
Roberto Ramirez A01366943
Jeasika Lopez A00821873
Naomi Honti A01282098
Ricardo Garza A00816705
*/
/* Definiciones */

/* Librerias */
%{
#include <stdio.h>
%}

/* Tokens */
%token TKN_NUM TKN_BOOL TKN_SIM TKN_STR TKN_P1A TKN_P1C TKN_P2A TKN_P2C TKN_FIN

/* Reglas */
%%

/* Prog = exp seguido de un prog o el final del programa */
prog: exp prog {printf("[PRO]\n");} | TKN_FIN {printf("[PRO]\n");printf("<<PROGRAMA CORRECTO>>\n");exit(0);};
/* Exp = un atomo o una lista */
exp: atomo {printf("[EXP]\n");} | lista	{printf("[EXP]\n");};
/* Atomo = recibe simbolo o un constante */
atomo: TKN_SIM {printf("[ATM]\n");} | constante	{printf("[ATM]\n");};
/* Constante = recibe un numero, un booleano o un string */
constante: TKN_NUM {printf("[CON]\n");} | TKN_BOOL {printf("[CON]\n");} | TKN_STR {printf("[CON]\n");}	;
/* Lista = se abre parentesis, contiene un elemento y se cierran parentesis. Si se completa correctamente, se da aviso */
lista: TKN_P1A elemento TKN_P1C {printf("[LST]\n");} | TKN_P2A elemento TKN_P2C {printf("[LST]\n");};
/* Elemento = exp seguido de elemento o vacio */
elemento: exp elemento {printf("[ELE]\n");}	| vacio	{printf("[ELE]\n");};
/* Sustituto de vacio */
vacio: ;

%%
/* Codigo de usuario */

main()
{
/* Hace parse */
yyparse();
}

/* Se activa en caso de error */
yyerror()
{
/* Mensaje de error */
printf("<<ERROR SINTACTICO>>\n");
}
