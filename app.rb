	require 'rubygems'
	require 'sinatra'
	require 'data_mapper'
	require 'dm-postgres-adapter'
	require 'pg'
	require "sinatra/reloader" if development? # doesn't work inside .md :(
	DataMapper.setup(:default,  ENV['DATABASE_URL'] ||  'postgres://postgres:postgres@localhost/postgres')
	class Code 
		include DataMapper::Resource
		property :code,		String, key: true  
		property :name,		Text     
		def as_json
			"{ \"code\": \"#{self.code}\", \"name\": \"#{self.name}\" }"
		end
	end
	DataMapper.finalize.auto_upgrade!
	
	get '/' do 
		"try /codes or /codes/7"
	end
	get '/codes' do
	 	codes = Code.all
		response = "[ \n #{ codes.map { |c| c.as_json }.join(",\n")  } \n ]"
		return response || "not found"
	end

	get '/codes/:prefix' do
		if params[:prefix] =~ /[0-9\.]+/
			codes = Code.all(:code.like => "#{params[:prefix]}%"  )
			response = "[ \n #{ codes.map { |c| c.as_json }.join(",\n")  } \n ]"
		end	
		
		return response || "not found"
	end	

	get '/codes/final/:suffix' do
		if params[:suffix] =~ /[0-9\.]+/
			codes = Code.all(:code.like => "%#{params[:suffix]}"  )
			response = "[ \n #{ codes.map { |c| c.as_json }.join(",\n")  } \n ]"
		end	
		
		return response || "not found"
	end

	get '/codes/code/:code' do
		if params[:code] =~ /[0-9\.]+/
			code = Code.first(:code => "#{params[:code]}"  )
			response = "#{ code.as_json }"
		end	
		
		return response || "not found"
	end