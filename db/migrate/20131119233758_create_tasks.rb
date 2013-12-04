class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :tip_id
      t.integer :todolist_id
    end
  end
end
