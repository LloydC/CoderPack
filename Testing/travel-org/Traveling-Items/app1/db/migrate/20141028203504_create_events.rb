class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :category
      t.text :details
      t.date :date
      t.time :time
      t.string :location
      t.integer :destination_id

      t.timestamps
    end
  end
end
