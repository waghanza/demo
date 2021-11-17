# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AddToBasket do
  subject { described_class.run(basket: basket, product: product, number: number) }

  let(:basket) { create(:basket) }

  shared_examples 'a valid interaction' do
    it 'is valid' do
      expect(subject).to be_valid
    end
  end

  context 'when second is free' do
    let(:product) { create(:product, code: 'GR1', price: 3.11.to_d) }
    let(:number) { 2 }

    it_behaves_like 'a valid interaction'

    it 'increments basket price' do
      expect { subject }.to change(basket.reload, :price).from(0.to_d).to(3.11.to_d)
    end
  end

  context 'with 3 products imply a discount' do
    context 'with a price reduction' do
      let(:product) { create(:product, code: 'SR1', price: 5.to_d) }
      let(:number) { 3 }

      it_behaves_like 'a valid interaction'

      it 'increments basket price' do
        expect { subject }.to change(basket.reload, :price).from(0.to_d).to(13.5.to_d)
      end
    end

    context 'with a global discount' do
      let(:product) { create(:product, code: 'CF1', price: 11.23.to_d) }
      let(:number) { 3 }

      it_behaves_like 'a valid interaction'

      it 'increments basket price' do
        expect { subject }.to change(basket.reload, :price).from(0.to_d).to(22.46.to_d)
      end
    end
  end
end
