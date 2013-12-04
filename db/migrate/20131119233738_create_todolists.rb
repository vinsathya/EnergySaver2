class CreateTodolists < ActiveRecord::Migration
  def change
    create_table :todolists do |t|
      t.integer :user_id
    end
  end
end
