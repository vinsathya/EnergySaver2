class Todolist < ActiveRecord::Base
	def user_name 
		user = User.find(user_id)
		return user.name
	end

	belongs_to :user
	has_many :tasks
	has_many :tips, :through => :tasks
end
