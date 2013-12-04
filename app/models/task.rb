class Task < ActiveRecord::Base
	belongs_to :tip
	belongs_to :todolist
end
