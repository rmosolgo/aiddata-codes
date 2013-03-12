code = ARGF.readlines.select { |line| 
	line[/^(\t)/] }.map { |line| 
		p line[1..-1] }.join

eval code