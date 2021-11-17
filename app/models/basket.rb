# frozen_string_literal: true

class Basket < ApplicationRecord
  has_many :items

  attribute :price, :decimal, default: -> { 0.to_d }
end
