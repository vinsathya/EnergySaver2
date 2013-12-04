class User < ActiveRecord::Base
	def name 
		return "#{firstname} #{lastname}"
	end

	has_many :tips
	has_one :todolist
	has_many :tasks, :through => :todolist
	has_many :todo_tips, :through => :tasks, :source => :tip

	after_create :create_todolist

	def create_todolist
		t = Todolist.new
		t.user_id = id
		t.save
	end

	# def tips
	# 	return Tip.where(:user_id => id)
	# end

	# def todo_tips
	# 	todos = Array.new
	# 	tasks.each do |task|
	# 		todos << task.tip
	# 	end
	# 	return todos
	# end
end
