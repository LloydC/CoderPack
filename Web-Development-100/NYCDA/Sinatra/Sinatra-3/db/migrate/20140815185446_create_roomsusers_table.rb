class CreateRoomsUsersTable < ActiveRecord::Migration
  def up
  	create_table :rooms_users do |t|
  		t.integer :user_id
  		t.integer :room_number
  		t.timestamp
  end
end

def down
	drop_table :rooms_users

end
end
