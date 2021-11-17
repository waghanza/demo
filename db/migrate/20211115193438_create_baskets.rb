# frozen_string_literal: true

class CreateBaskets < ActiveRecord::Migration[5.2]
  def change
    create_table :baskets do |t|
      t.decimal :price, precision: 10, scale: 2, null: false, default: 0.0

      t.timestamps
    end
  end
end
