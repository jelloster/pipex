# Pipex

**Pipex** is a project that replicates the behavior of bash pipes (`|`), allowing you to run commands in sequence with input/output redirection.

## How it Works

`./pipex file1 cmd1 cmd2 ... cmdn file2`

is the equivalent of the following bash command:

`< file1 cmd1 | cmd2 | ... | cmdn > file2`

First argument being the input file, last being the output file, and everyhing in between being the commands.  
  
The minimum is 2 commands.

## Example

`./pipex infile "grep int" "wc -l" outfile`
