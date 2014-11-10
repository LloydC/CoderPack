class CreateProfilesTable < ActiveRecord::Migration
  def change
  	create_table :profiles do |t|
  		t.string :status
  		t.integer :user_id
  		t.timestamp
  	end
  end
end
