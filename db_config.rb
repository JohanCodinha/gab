require 'active_record'

options = {
	adapter: 'postgresql',
	database: 'gab',

}

ActiveRecord::Base.establish_connection(options)