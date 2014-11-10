class CreateProfilesTable < ActiveRecord::Migration
  def up
  	create_table :profiles do |t|
  		t.string :fname
  		t.string :lname
  		t.string :status
  		t.timestamp
  		end
	end

	def down
	drop_table :profiles

	end
end
