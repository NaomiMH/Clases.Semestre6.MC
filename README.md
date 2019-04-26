# Clases.Semestre6.MC
Clase: Matematicas computacionales

Profesor: Santiago Enrique Conant Pablos

Enero-Mayo 2019 grupo 1

Tecnologico de Monterrey. Monterrey, Nuevo Leon, Mexico.

## Integrantes
Roberto Ramirez A01366943

Jeasika Lopez A00821873

Naomi Honti A01282098

Ricardo Garza A00816705

## Informacion
25-26 de abril 2019

### Especificaciones del lenguaje

prog ::= progr expo | **$**

expo ::= átomo | lista

átomo ::= **símbolo** | constante

constante ::= **número** | **booleano** | **string**

lista ::= ( elemento ) | [ elemento ]

elemento ::= exp elemento | **vacio**

### Ejemplos correctos

atomos 25 #t “hola amigo” $

[ esta es una lista ] $

(símbolo [100 ( #t “string”) ]

sigue lista) $

(define [sqr x] [mult x x]) $

## Programa
Sistema operativo Linux

- Programas necesarios:

gcc

flex

biron

## Comandos para compilar
1. flex scheme.l

2. bison -d scheme.y

3. gcc -c lex.yy.c

4. gcc -c scheme.tab.c

5. gcc -o scheme.exe lex.yy.o scheme.tab.o -lfl
