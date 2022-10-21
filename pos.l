%{
#include<stdlib.h>
#include<stdio.h>
int flag=0;
%}
%%
^[-][1-9][0-9]* {flag=1;}
.   ;
\n {return 0;}
%%
void main()
{
printf("Enter the number");
yylex();
if(flag==1)
printf("negative");
else
printf("postive");
}
int yywrap()
{
return 1;
} 
