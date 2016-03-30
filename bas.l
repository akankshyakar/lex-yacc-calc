/*fdmvd*/
digit [0-9]
letter [A-Za-z]
%{
int count;
%}
%%

{letter}({letter}|{digit})* printf("%4d\t %s", count++, yytext);;
%%
int main(void) {
yylex();
printf("number of identifiers = %d\n", count);
return 0;
}
