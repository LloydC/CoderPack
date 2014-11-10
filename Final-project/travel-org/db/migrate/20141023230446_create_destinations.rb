class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :city
      t.string :country
      t.text :information
      t.string :accomodation
      t.string :avatar

      t.timestamps
    end
  end
end
