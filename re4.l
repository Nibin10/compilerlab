%{
	#include"y.tab.h"
%}
%%
^[aA]	{return A;}
[A-Za-z0-9] {return B;}

[\t]	;
[\n]	{return NL;}
. {return C;}
%%
int yywrap()
{
return 1;
}
