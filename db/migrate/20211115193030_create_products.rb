# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :code, unique: true
      t.decimal :price, precision: 10, scale: 2, null: false

      t.timestamps
    end
  end
end
