%{
#include<stdlib.h>
#include<stdio.h>
int lines=0,words=0,letter=0,digits=0,spl_character=0;
%}
%%
\n  {lines++,words++;}
[\t' ']	  {words++;}
[A-Z a-z]   {letter++;}
[0-9]   {digits++;}
.   {spl_character++;}
%%
main()
{
yyin=fopen("sample.txt","r");
yylex();
printf("no of lines=%d\n",lines);
printf("no of words=%d\n",words);
printf("no of letter=%d\n",letter);
printf("no of digits=%d\n",digits);
printf("no of spl_character=%d\n",spl_character);

}
int yywrap()
{
return 1;
} 
