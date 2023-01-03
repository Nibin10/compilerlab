%{
#include<stdio.h>

%}
%token A B NL C
%%
P:S NL	{printf("string is valid");
	 return 0;
	}
S: S B | A ;
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
