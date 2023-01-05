%{
#include<stdio.h>
%}
%token L D X
%%
P:S {printf("Valid identifier");
	return 0;}
S:LF
F: L
   |D
%%
int main()
{
printf("Enter the word:");
yyparse();
}
int yyerror()
{
printf("Invalid identifier");
