class CreateProfilesTable < ActiveRecord::Migration
  def change
  	create_table :profiles do |p|
  		p.string :fname
  		p.string :lname
  		p.string :status
  	end
  end
end
