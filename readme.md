# AidData Codes API

## General Info

Currently deployed at http://aiddata-codes.herokuapp.com.

For examples, try:

- http://aiddata-codes.herokuapp.com/codes
- http://aiddata-codes.herokuapp.com/codes/72
- http://aiddata-codes.herokuapp.com/codes/310
- http://aiddata-codes.herokuapp.com/codes/final/81
- http://aiddata-codes.herokuapp.com/codes/final/.07
- http://aiddata-codes.herokuapp.com/codes/code/99820
- http://aiddata-codes.herokuapp.com/codes/code/11100.01

__Only responds to GET__ 

### What's the point?

- Keep all code lists in sync
- Support applications with data with codes but no descriptions


### What it runs on

```Ruby

	require 'rubygems'
	require 'sinatra'
	require 'data_mapper'
	require 'dm-postgres-adapter'
	require 'pg'

	require "sinatra/reloader" if development? # doesn't work inside .md :(

	DataMapper.setup(:default, 'postgres://postgres:postgres@localhost/postgres')
```

### What are codes?

Codes are numbers which categorize development projects in a hierarchical way.

```Ruby

	class Code 
		include DataMapper::Resource
		property :code,		String, key: true  
		property :name,		Text     
		def as_json
			"{ \"code\": \"#{self.code}\", \"name\": \"#{self.name}\" }"
		end
	end

	DataMapper.finalize.auto_upgrade!
```

## Use

```Ruby

	get '/' do 
		"try /codes or /codes/7"
	end

```

### Getting a list of codes

#### Get all 

`/codes`

```Ruby
	get '/codes' do
	 	codes = Code.all
		response = "[ \n #{ codes.map { |c| c.as_json }.join(",\n")  } \n ]"
		return response || "not found"
	end
```

#### Filter the list by initial digits

`/codes/1`
`/codes/72010`
`/codes/99`

```Ruby
	get '/codes/:prefix' do
		if params[:prefix] =~ /[0-9\.]+/
			codes = Code.all(:code.like => "#{params[:prefix]}%"  )
			response = "[ \n #{ codes.map { |c| c.as_json }.join(",\n")  } \n ]"
		end	
		
		return response || "not found"
	end	
```

#### Filter the list by final digits

`/codes/final/81`
`/codes/final/.10`

```Ruby
	get '/codes/final/:suffix' do
		if params[:suffix] =~ /[0-9\.]+/
			codes = Code.all(:code.like => "%#{params[:suffix]}"  )
			response = "[ \n #{ codes.map { |c| c.as_json }.join(",\n")  } \n ]"
		end	
		
		return response || "not found"
	end
```

### Getting data for numerical codes

#### Send a code, get a name

`/codes/code/99810`
`/codes/code/11100.01`

```Ruby
	get '/codes/code/:code' do
		if params[:code] =~ /[0-9\.]+/
			code = Code.first(:code => "#{params[:code]}"  )
			response = "#{ code.as_json }"
		end	
		
		return response || "not found"
	end
```