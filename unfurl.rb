# Ruby code to remove Url values from LaTeX bib files 
# Usage: ruby unfurl.rb filename 

filename = ARGV[0]
input = File.open(filename+'.bib')
output = File.open(filename+'SansUrls.bib', 'w')

input.each do |line|
  if (line.include? 'Url') | (line.include? 'Id =')
  	if line.include? '}}'
  		output.write("}\n")
  	end 
  else
    output.write(line)
  end
end

input.close
output.close