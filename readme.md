# AidData Codes API

## General Info

Currently deployed at http://aiddata-codes.herokuapp.com.
Move from readme.md to app.rb with `grep -E "^   " readme.md > app.rb `

For examples, try:

- http://aiddata-codes.herokuapp.com/codes
- http://aiddata-codes.herokuapp.com/codes/72
- http://aiddata-codes.herokuapp.com/codes/310
- http://aiddata-codes.herokuapp.com/codes/final/81
- http://aiddata-codes.herokuapp.com/codes/final/.07
- http://aiddata-codes.herokuapp.com/codes/code/99820
- http://aiddata-codes.herokuapp.com/codes/code/11100.01

(__Note:__ Except for `/codes`, these routes only respond to `GET` requests. `/codes` also responds
to `POST` requests.)

### How to
Use routes like those above, or pass params to `/codes`:
- `text` to search for inclusion of a string in the code name (case-insensitive, eg, `?text=support` to find "Support to local groups")
- `type` to filter by type: supersector, sector, purpose, activity (eg, `type=sector` returns 3-digit codes)
- `prefix` to filter by initial digits (or ".")
- `suffix` to filter by final digits (or ".")


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
```

## Use


### Getting a list of codes

#### Get all 

`/codes`

```Ruby
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
```

#### Filter the list by initial digits

- `/codes/1`
- `/codes/72010`
- `/codes/99`

```Ruby
	get '/codes/:prefix' do

		codes = find_codes(params)
		response = "[ \n #{ codes.map { |c| c.as_json }.join(",\n")  } \n ]"
	
	end	
```

#### Filter the list by final digits

- `/codes/final/81`
- `/codes/final/.10`

```Ruby
	get '/codes/final/:suffix' do

		codes = find_codes(params)
		response = "[ \n #{ codes.map { |c| c.as_json }.join(",\n")  } \n ]"
		
		return response || "not found"
	end
```
### Getting data for numerical codes

#### Get a specific code

You can get a single object instead of an array. 

- `/codes/code/99810`
- `/codes/code/11100.01`

```Ruby
	get '/codes/code/:code' do
		# should only return 1
		code = find_codes(params)[0]
		response = code.as_json 
		return response || "not found"
	end
```

### Underlying function
```Ruby
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
```