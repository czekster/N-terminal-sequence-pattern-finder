# N-terminal-sequence-pattern-finder

This project describes the **NTSPF: N-terminal Sequence Pattern Finder** project.

This is a Perl script that will traverse an input file having **SEQUENCES OF SOMETHING** and it will look for specific patterns as specified by a user input.
An example is to ask the script to find all occurrences starting with the letter "M", it will return all matched instances starting with M and all of its OFFSPRING, eg "MLA", "MLD" and subsequently, counting them all and yielding an output file for other in-depth fine-tuned analysis.

## Steps to run it (on MS-Windows):
- Download and install [Perl](https://www.activestate.com/products/perl/downloads/)
- Clone this project or download .zip file (on GitHub interface, click on `<> Code > Download ZIP file > main.zip`) to your preferred folder (e.g., `c:\users\machine\desktop`)
- Run a command line interface (CLI) on MS-Windows: `command.exe`
- Go to the folder you ran: `cd c:\users\machine\desktop\ntspf`
- Run script: `perl run.pl GCF_000006765.1_ASM676v1_protein.faa ML`

This example will take as input the file `GCF_000006765.1_ASM676v1_protein.faa` (available here for testing purposes) and it will run for the pattern `ML`.
It will produce the following output:
```
ML = 316
MLA = 16
MLD = 22
MLE = 26
MLF = 8
MLG = 16
MLH = 5
MLI = 23
MLK = 24
MLL = 25
MLM = 3
MLN = 22
MLP = 17
MLQ = 9
MLR = 36
MLS = 27
MLT = 20
MLV = 10
MLW = 4
MLY = 3
```

Test other patterns: `perl run.pl GCF_000006765.1_ASM676v1_protein.faa MK`

## Files
- Main Perl script: `run.pl`
- example input file: `GCF_000006765.1_ASM676v1_protein.faa` PUT DESCRIPTION HERE
- Output files
  - Running for pattern 'MK': `results_MK_06-43-39.txt`
  - Running for pattern 'ML': `results_ML_06-43-36.txt`

