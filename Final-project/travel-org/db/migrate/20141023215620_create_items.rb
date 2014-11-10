class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :details
      t.integer :price
      t.string :avatar

      t.timestamps
    end
  end
end
