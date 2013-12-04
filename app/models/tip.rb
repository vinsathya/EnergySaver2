class Tip < ActiveRecord::Base

	belongs_to :user
	has_many :todolists, :through => :tasks
	has_many :tasks
end
