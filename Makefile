# all : Build
all: output

# Dependencies for output file
output: lex.yy.c parser.tab.c parser.tab.h
	@gcc lex.yy.c parser.tab.c -o output

# Generate lexer and parser
lex.yy.c: lexer.lex
	@flex lexer.lex

parser.tab.c parser.tab.h: parser.y
	@bison -d parser.y

# Clean up
clean:
	@rm -f lex.yy.c parser.tab.c parser.tab.h output
