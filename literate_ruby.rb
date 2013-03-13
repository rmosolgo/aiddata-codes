code = ARGF.readlines.select { |line| 

		line[/^(\t)/] }.map { |line| 
			line[1..-1] }.join

		

eval code