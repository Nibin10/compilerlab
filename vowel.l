%{
#include<stdlib.h>
#include<stdio.h>
int vowels=0,consonants=0,flag=1;
%}
%%
[AEIOUaeiou]  {vowels++;}
[A-Za-z] {consonants++;}
.   {flag=0;}
%%
main()
{
yyin=fopen("sample.txt","r");
yylex();
printf("no of vowels=%d\n",vowels);
printf("no of consonants=%d\n",consonants);

}
int yywrap()
{
return 1;
} 
