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
#include <stdlib.h>

/* Tokens */
#include "scheme.tab.h"
%}

/* Boolean #f o #t */
BOOL	#[t|f]
/* Numeros 1 o mas digitos */
NUM	[0-9][0-9]*
/* Simbolos 1 o mas minusculas */
SIM	[a-z][a-z]*
/* Strings 0 o mas minusculas, digitos o espacios entre comillas */
STR	\"([a-z]*[0-9]*(\ )*)*\"
/* Blancos */
BL	[\t\ \n]+

/* Reglas */
%%

{BL} /* ignorar */

{NUM} /* Numero reconocido. Token de numero */ {printf("(NUM : %s)\n",yytext); return(TKN_NUM);}
{BOOL} /* Booleano reconocido. Token de Booleano */ {printf("(BOO : %s)\n",yytext); return(TKN_BOOL);}
{STR} /* String reconocido. Token de string */ {printf("(STR : %s)\n",yytext); return(TKN_STR);}
{SIM} /* Simbolo reconocido. Token de simbolo */ {printf("(SIM : %s)\n",yytext); return(TKN_SIM);}

\( /* Token de parentesis 1 abierto */ {return(TKN_P1A);}
\) /* Token de parentesis 1 cerrado */ {return(TKN_P1C);}
\[ /* Token de parentesis 2 abierto */ {return(TKN_P2A);}
\] /* Token de parentesis 2 cerrado */ {return(TKN_P2C);}

\$ /* fin del programa */ {return(TKN_FIN);}

. /* error y fin del programa */ {printf("<<ERROR LEXICO>>\n"); exit(0);}

%%
/* Codigo de usuario */

/* No se necesita, se utiliza el main del archivo .y 
main()
{
// routine
yylex();
}
*/
