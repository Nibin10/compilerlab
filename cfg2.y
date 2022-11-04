%{
#include<stdio.h>
int flag=0;
%}
%token NUM
%left '+' '-'
%left '*' '/' '%'
%left '(' ')'
%%
S:E 	{printf("Result is evaluated=%d \n",$$);
	 return 0;
	}
E : 	  E '+' E	{$$=$1+$3;} 
	| E '-' E 	{$$=$1-$3;}
	| E '*' E 	{$$=$1*$3;}
	| E '/' E 	{$$=$1/$3;}
	| E '%' E 	{$$=$1%$3;}
	| '(' E ')' 	{$$=$2;}
	| NUM 		{$$=$1;}
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
