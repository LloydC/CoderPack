class CreatePizzas < ActiveRecord::Migration
  def change
    create_table :pizzas do |t|
      t.string :name
      t.string :size
      t.integer :price

      t.timestamps
    end
  end
end
