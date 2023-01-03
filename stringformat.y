%{
#include<stdio.h>

%}
%token A B NL
%%
P:S NL	{printf("string is valid");
	 return 0;
	}
S: A S B | A B ;
%%
int main()
{
printf("Enter the string");
yyparse();
}
int yyerror(char *S)
{
printf("string is invalid");
}
