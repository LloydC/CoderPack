class CreateRoomsTable < ActiveRecord::Migration
  def change
  	create_table :rooms do |r|
  		r.integer :room_num
  		r.datetime :date
  	end
  end
end
