%{
	#include"y.tab.c"
%}
%%
[_a-zA-Z] {return L;}
[0-9]  {return D;}
[\n]  {return 0;} 
.  {return X;}
%%
int ywrap()
{
	return 1;
}
