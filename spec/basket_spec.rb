require 'basket'

describe Basket do

  subject(:basket) { described_class.new }
  let(:order) { double(order: order)}
  order = {"large_pizza" => 12.99, "medium_pizza" => 7.99}

  describe '#initialize' do
    it 'is initialized with an empty order' do
      expect(basket.order).to be_empty
    end
    it 'is initialized with a total of 0' do
      expect(basket.total).to eq nil
    end
  end

  describe '#add' do
    it 'calculates the total price for an order' do
      allow(basket).to receive(:order).and_return order
      basket.add
      expect(basket.total).to eq 20.98
    end
  end

  describe '#view' do
    it 'diplays the contents of the basket' do
      allow(basket).to receive(:order).and_return order
      print_order = "1. Large Pizza 12.99\n2. Medium Pizza 7.99\n"
      expect { basket.view }.to output(print_order).to_stdout
    end
    it 'returns the total price of the order' do
      expect(basket.view).to eq basket.total
    end
  end
end
