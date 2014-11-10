class CreateUsersTable < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :username
  		t.string :address
  		t.integer :profile_id
  	end
  end
end
