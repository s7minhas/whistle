# Ruby code to remove Url values from LaTeX bib files 
# Usage: ruby unfurl.rb < infile.bib > outfile.bib 

ARGF.each do |line|
  if (line.include? 'Url') | (line.include? 'Id =') | (line.include? '\url') | (line.include? 'http:')
  	if (line.include? '}}') & !(line.include? '}},')
  		$stdout.write("}\n")
  	end 
  else
    $stdout.write line 
  end
end

$stdout.flush