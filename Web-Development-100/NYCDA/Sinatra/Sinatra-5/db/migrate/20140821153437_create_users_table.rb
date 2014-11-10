class CreateUsersTable < ActiveRecord::Migration
  def change
  	create_table :users do |u|
  		u.string :username
  		u.string :password
  		u.timestamp
  	end
  end
end
