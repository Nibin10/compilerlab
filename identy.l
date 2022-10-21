%{
#include<stdlib.h>
#include<stdio.h>
int flag=0;
%}
%%
^[_A-Za-z][A-Za-z0-9_]* {flag=1;}
.   ;
\n {return 0;}
%%
void main()
{
printf("Enter the string");
yylex();
if(flag==1)
printf("it is an identifier");
else
printf("not an identifier");
}
int yywrap()
{
return 1;
} 
