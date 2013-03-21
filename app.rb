	require 'rubygems'
	require 'sinatra'
	require 'data_mapper'
	require 'dm-postgres-adapter'
	require 'pg'
	require 'thin'
	require "sinatra/reloader" if development? # doesn't work inside .md :(
	DataMapper.setup(:default, ENV['DATABASE_URL'] || 'postgres://postgres:postgres@localhost/postgres')
	class Code 
		include DataMapper::Resource
		property :code,		String, key: true  
		property :name,		Text     
		def as_json
			"{ 
				\"code\" : \"#{self.code}\",
			 	\"name\" : \"#{self.name}\" ,
			 	\"type\" : \"#{self.type}\" 
			 }"
		end
		def type
			if code.length == 8 # xxxxxx.xx
				"activity"
			elsif code.length == 5 # xxxxx
				"purpose"
			elsif code.length == 3 # xxx
				"sector"
			elsif code.length == 1 # x
				"supersector"
			else 
				"unknown"
			end
		end
		# def colors
	end
	DataMapper.finalize.auto_upgrade!
	get '/codes' do
	 	codes = find_codes(params)
		response = "[ \n #{ codes.map { |c| c.as_json }.join(",\n")  } \n ]"
		return response || "not found"
	end
	post '/codes' do
	 	codes = find_codes(params)
		response = "[ \n #{ codes.map { |c| c.as_json }.join(",\n")  } \n ]"
		return response || "not found"
	end
	get '/codes/:prefix' do
		# collects params[:prefix]
		codes = find_codes(params)
		response = "[ \n #{ codes.map { |c| c.as_json }.join(",\n")  } \n ]"
	
	end	
	get '/codes/final/:suffix' do
		# collects params[:suffix]
		codes = find_codes(params)
		response = "[ \n #{ codes.map { |c| c.as_json }.join(",\n")  } \n ]"
		
		return response || "not found"
	end
	get '/codes/code/:code' do
		# collects params[:code]
		# should only return 1
		code = find_codes(params)[0]
		response = code.as_json 
		return response || "not found"
	end
	def find_codes(params)
		codes = Code.all
		if params[:prefix] =~ /[0-9\.]+/
			codes = codes & Code.all(:code.like => "#{params[:prefix]}%"  )
		end
		if params[:suffix] =~ /[0-9\.]+/
			codes = codes & Code.all(:code.like => "%#{params[:suffix]}"  )
		end	
		if params[:type] =~ /\w+/
			codes = codes.select { |c| c.type == params[:type]}
		end
		if params[:text] =~/[\w,\.\-]+/
			codes = codes & Code.select { |c| c.name.downcase.include? params[:text].downcase}
		end 
		if params[:code] =~ /[0-9\.]+/
			codes = codes & Code.all(:code => "#{params[:code]}"  )
		end	
		codes
	end
