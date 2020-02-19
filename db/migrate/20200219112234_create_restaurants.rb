class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.integer :number
      t.string :category
      t.integer :review, default: 0

      t.timestamps
    end
  end
end
