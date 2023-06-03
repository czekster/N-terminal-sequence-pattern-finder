# N-terminal-sequence-pattern-finder

This project describes the **N-terminal Sequence Pattern Finder** project.

This is a Perl script that will traverse an input file having **protein sequences as FASTA format**, i.e.: 
1. First line of each query protein must begin with a greater-than (">") symbol in the first column. Word(s) following the `">"` symbol is/are the identifier and description of the sequence.
2. The amino acid sequence (in single-character code) begins in a different line and ends if another line starting with a `">"` appears, which indicates the start of another query protein. It will look for specific patterns as specified by a user input.

An example is to ask the script to find all occurrences starting with the letter "M", it will return all matched instances starting with M and all of its OFFSPRING, eg "MLA", "MLD" and subsequently, counting them all and yielding an output file for other in-depth fine-tuned analysis.

## Steps to run it (on MS-Windows):
- Download and install [Perl](https://www.activestate.com/products/perl/downloads/)
- Clone this project or download .zip file (on GitHub interface, click on `<> Code > Download ZIP file > main.zip`) to your preferred folder (e.g., `c:\users\machine\desktop`)
- Run a Command Line Interface (CLI) on MS-Windows: `command.exe`
- Go to the folder you extracted the file: `cd c:\users\machine\desktop\main` (it will depend on the file name you downloaded)
- Run script: `perl run.pl GCF_000006765.1_ASM676v1_protein.faa ML`
  - For this case, it yields: `I have found 316 occurrences. I put them on file 'results_ML_04-41-10.txt'.` (the name of the file states the pattern - ML - followed by the time `HH-MM-SS` - hour-minute-second - that it ran)

This example will take as input the file `GCF_000006765.1_ASM676v1_protein.faa` (available here for testing purposes) and it will run for the pattern `ML`.
It will produce the following output:
```
[>NP_248753.1 hypothetical protein PA0063 [Pseudomonas aeruginosa PAO1]]: MLVGRRAVRVLCYVPPMPRRLRHPLADLRLPRWVPCLALLALSGCSTVSYYGQLASGQFALLRAREPAAAVIADPQRDAR
[>NP_248772.1 hypothetical protein PA0082 [Pseudomonas aeruginosa PAO1]]: MLDVPVLLAAVSPDSPCGDDLEYDAAFLELERIAQGQPERQMGDAVLPAEPPEWPRVRALASELFGRSKDLRVANLLLQS
[>NP_248790.1 hypothetical protein PA0100 [Pseudomonas aeruginosa PAO1]]: MLKKLSPIFSNITGVVRYQDLAYVASVSDEIQEQNIAHSYVTEWDCGTWCVAGEDDDMLPWEIVSATVVHEPVEQALFLG
...
```

**How to test other patterns:** run on the terminal, `perl run.pl GCF_000006765.1_ASM676v1_protein.faa MK`

## Files
- Main Perl script: `run.pl`
- example input file: `GCF_000006765.1_ASM676v1_protein.faa` - protein sequences as FASTA format
- Output files
  - Running for pattern 'MK': `results_MK_06-43-39.txt`
  - Running for pattern 'ML': `results_ML_06-43-36.txt`

## Authors
- Clarissa M. Czekster: cmc27 - at - st-andrews.ac.uk
- Ricardo M. Czekster: meloczer - at - aston.ac.uk


