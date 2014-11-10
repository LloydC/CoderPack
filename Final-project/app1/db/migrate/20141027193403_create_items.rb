class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :details
      t.string :category
      t.integer :price
      t.string :url

      t.timestamps
    end
  end
end
