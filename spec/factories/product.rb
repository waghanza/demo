# frozen_string_literal: true

FactoryBot.define do
  factory :product do
    code { 'foo' }
    name { 'bar' }
    price { 0 }
  end
end
