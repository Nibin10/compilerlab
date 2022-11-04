%{
#include<stdio.h>
int flag=0;
%}
%token NUM
%left '+' '-'
%left '*' '/' '%'
%left '(' ')'
%%
S:E 	{printf("Result is evaluated=%d",$$);
	 return 0;
	}
E : E '+' E | E '-' E | E '*' E | E '/' E | E '%' E | '(' E ')' | NUM 
%%
void main()
{
printf("Enter the Expression");
yyparse();
if(flag==0)
{
	printf("valid expression");
}
}
void yyerror()
{
printf("invalid expression");
flag=1;
}
