whistle
=======

A repo for refs.

## tl;dr
```
bash merge.sh infile.bib outfile.bib
```

## Adding to the file 

New additions must abide the following rules

### index

`lastname1stauthor:year`  (all lower)(one author) \
`lastname1stauthor:lastname2ndauthor:year`  (two authors) \
`lastname1stauthor:etal:year`   (more than two authors) \


This step can often be accomplished using automated tools in Bibdesk, Jabref, and other citation managers. 

### Author names and initials 
For author names in the citations make sure that the full name is available, 
i.e., Michael D. Ward not M.D. Ward

Full initials that are abbreviations need a period
i.e., Michael D. Ward not Michael D Ward

### Titles 
Titles should be in environment delimiters {}

### Deduplication of entries

Deduplication can be accomplished using a number of the tools listed above. However, sometimes it is more straightforward to use the command-line program [bibtool](http://www.ctan.org/tex-archive/biblio/bibtex/utils/bibtool). 

To sort and deduplicate your entries, with output redirected to a new file, use the following command:
```
bibtool -s -d infile.bib -o outfile.bib
```

### Removing URLs from references
URLs can often cause problems when moving between various citation managers and/or compiling your LaTeX document. For this reason we added the `unfurl.rb` utility.

Usage:
```ruby unfurl.rb < infile.bib > outfile.bib```

