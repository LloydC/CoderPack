class CreateUsersroomsTable < ActiveRecord::Migration
  def change
  	create_table :user_rooms do |ur|
  		ur.integer :user_id
  		ur.integer :room_id 
  	end
  end
end
