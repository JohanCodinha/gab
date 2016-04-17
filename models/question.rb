class Question < ActiveRecord::Base
	belongs_to :new_arrival
	belongs_to :user
end