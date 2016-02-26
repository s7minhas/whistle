#!/bin/bash
infile="$1"
outfile="$2"
ruby unfurl.rb < $infile > tmp.bib
bibtool -s -d master.bib tmp.bib -o tmp2.bib
sed "s/\:-/\:/g" tmp2.bib > $outfile
rm tmp.bib
rm tmp2.bib 