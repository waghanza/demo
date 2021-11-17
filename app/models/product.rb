# frozen_string_literal: true

class Product < ApplicationRecord
  attribute :price, :decimal, default: -> { 0.to_d }
end
