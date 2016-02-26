# Ruby code to clean up bibtex keys
# Usage: ruby cleanKey.rb < infile.bib > outfile.bib 

ARGF.each do |line|
  if (line.include? '@') 
  	$stdout.write(line.gsub(/['.]/, ":"))
  else
    $stdout.write line 
  end
end

$stdout.flush