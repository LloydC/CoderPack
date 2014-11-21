class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :name
      t.string :country
      t.string :languages
      t.text :visas_info
      t.text :health_info
      t.text :safety_info
      t.integer :events_id

      t.timestamps
    end
  end
end
