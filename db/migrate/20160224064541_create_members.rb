class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
    	t.string :first_name
    	t.string :last_name
    	t.integer :age
    	t.string :email
    	t.string :gender
    	t.string :experience
    end
  end
end
