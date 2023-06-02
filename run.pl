#!/usr/bin/perl

use strict;
use warnings;

use Time::Local;
use Cwd qw();

if (@ARGV != 2) { 
   print "missing FOLDER parameter. \nusage: perl run.pl FILE PATTERN\n";
   print "example: perl run.pl GCF_000006765.1_ASM676v1_protein.faa ML\n";
   exit;
}

# save all properties into one array variable
my $file = $ARGV[0];
my $pattern = $ARGV[1];
my $path = ".\\";

my $counter = 0;
my $linecounter = 0;
my $lc = 0;
my $identifier = "";

#current localtime
(my $sec,my $min,my $hour,my $mday,my $mon,my $year,my $wday,my $yday,my $isdst)=localtime(time);
my $timing = sprintf("%02d-%02d-%02d",$hour,$min,$sec);

open(INFILE, "<$file") or die("cannot open hash file named $file\n");
my(@lines) = <INFILE>;
close(INFILE);

#save results to disk
open(RESFILE,'>>', "$path//results_$pattern"."_"."$timing.txt") or die $!;

foreach my $line (@lines) {
   $line =~ s/\n//g;
   $linecounter++;
   if ($line =~ /^>/g) {
      $identifier = $line;
      $lc = $linecounter;
      #print $identifier."\n";
   } elsif ($line =~ /^$pattern/g && $linecounter == $lc + 1) {
      $counter++;
      #print "$line [$identifier]\n\n";
      print RESFILE "[$identifier]: ".$line."\n";
   }
}
close(RESFILE);
print "I have found $counter occurrences. I put them on file 'results_$pattern"."_"."$timing.txt'.\n";

