# frozen_string_literal:true

# Restaurant Model Migration
class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.integer :number
      t.string :category

      has_many :reviews

      t.timestamps
    end
  end
end
