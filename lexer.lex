/* Description: Generate tokens from ansible inventory file
 */

%{
#include <stdio.h>
#include "parser.tab.h"
%}

%option noyywrap

L [a-zA-Z]
name [a-zA-Z]+[0-9_-]+
D [0-9]
alphanum {L}({L}|{D})*
number {D}+
hostname {alphanum}\.{alphanum}\.{alphanum}
ipaddr {number}\.{number}\.{number}\.{number}
delim :

%%

"hosts"	  														{printf(" KEYWORD "); return HOSTS; }
"children"                            {printf(" CHILDREN "); return CHILDREN; }
{alphanum}                            {printf("AN %s ", yytext); return ANUM; }
{number}                              {printf("NN %s ", yytext); return NUM; }
{delim}	  														{printf(" DELIM "); return DELIM; }
{hostname}            								{printf("HN %s ", yytext); return HOSTNAME; }
{ipaddr}                              {printf("IP %s ", yytext); return IPADDR; }

%%


