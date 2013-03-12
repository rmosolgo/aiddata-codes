# AidData Codes API

## General Info

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

	# require "sinatra/reloader" if development? # doesn't work inside .md :(

	DataMapper.setup(:default, 'postgres://postgres:postgres@localhost/postgres')
```

### What are codes?

Codes are numbers which categorize development projects in a hierarchical way.

```Ruby

	class Code 

	include DataMapper::Resource

		property :id,		Serial   
		property :code,		String   
		property :name,		Text     

		def as_json
			"{ 'code': '#{self.code}', 'name': '#{self.name}'' }"
		end

	end

	DataMapper.finalize
```

## Use

### Getting a list of codes

#### Get all 

`/codes`

	get '/codes' do
		"[ #{Code.all.map { |c| c.as_json exclude: :id }.join("], [") } ]"
	end


#### Filter the list by initial digits

`/codes/1`
`/codes/72010`
`/codes/99`

#### Filter the list by final digits

`/codes/final/81`
`/codes/final/10`


### Getting data for numerical codes

#### Send a code, get a name

`/codes/code/99810`
`/codes/code/11100.01`
