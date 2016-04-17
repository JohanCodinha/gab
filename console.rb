require 'pry'
require 'active_record'

ActiveRecord::Base.logger = Logger.new(STDERR)

require './db_config'
require './models/user'
require './models/new_arrival'
require './models/question'

binding.pry