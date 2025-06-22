Project Goal

The primary objective of this project was to gain a practical understanding of metaprogramming and Domain-Specific Languages (DSLs). This was achieved by developing a custom parser for Ansible inventory files. Specifically, the parser is designed to lexical analyze and syntax parse the inventory structure to identify and count the total number of hosts defined within these configuration files. This hands-on experience provides insight into how declarative configuration-as-code tools like Ansible interpret their input to manage infrastructure.

File Structure

This project consists of the following files:

lexer.l: The Flex (lexical analyzer) definition file. It contains the rules for breaking down the input Ansible inventory file into astream of tokens (e.g., keywords, hostnames, identifiers).

parser.y: The Bison (parser generator) definition file. It defines the grammar rules for the Ansible inventory file structure and specifies actions to be taken (like incrementing host and group counters) when specific grammatical patterns are recognized.

inventory: A sample Ansible inventory file used as input for the parser. This file demonstrates the format and content that the parser is designed to handle.

test.sh: A shell script for testing purposes.
