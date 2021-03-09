%{
#include <stdio.h>
int f=0,g,h;
%}
%%
[0-9]+ {g=atoi(yytext);
	f=0;
	if (g==2)
	{
	printf("\n Input is a Prime Number");
	}
	else if (g==0 || g==1)
	{
	printf("Input is not a Prime Number");
	}
	else 
	{
	for (h=2;h<g;h++)
	{
	if(g%h==0)
	{
	f=1;
	}
	}
	if (f==1)
	{
	printf("\n Input is not a Prime Number");
	}
	else if (f==0)
	{
	printf("\n Input is a Prime Number");
	}
	}
	}
%%
int yywrap()
{
return 1;
}
int main()
{
yylex();
return 0;
}
