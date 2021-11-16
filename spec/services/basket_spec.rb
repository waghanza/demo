# frozen_string_literal: true

RSpec.describe BasketService do
  subject(:basket) { described_class.new }

  describe '#add' do
    context 'when buying two green teas' do
      subject { basket.add(Product.find_by(code: 'GR1'), 2) }

      it do
        expect { subject }.to change(baseket, :price).from(0).to(3.11)
      end
    end
  end
end
