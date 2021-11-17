# frozen_string_literal: true

class AddToBasket < ActiveInteraction::Base
  object :basket
  object :product
  integer :number

  def execute
    number.times { basket.items << Item.create(product: product) } # TODO: try to eager load
    count = basket.items.select { |item| item.product == product }.count
    basket.increment(:price, discount(product, count))
  end

  private

  def discount(product, quantity)
    if product.code == 'GR1'
      product.price * (quantity / 2)
    elsif product.code == 'SR1' && quantity >= 3
      (product.price - 0.5) * quantity
    elsif product.code == 'CF1' && quantity >= 3
      (product.price * quantity) * 2 / 3
    else
      product.price * quantity
    end
  end
end
