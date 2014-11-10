class CreateRoomsTable < ActiveRecord::Migration
  def up
  	create_table :rooms do |t|
  		t.integer :room_number
  		t.integer :user_id
  		t.datetime :date
  end
end

def down
	drop_table :rooms

end 
end