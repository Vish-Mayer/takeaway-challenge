require 'basket'
require 'takeaway'

describe Basket do

  subject(:basket) { described_class.new }

  describe 'initialize' do
    it 'is initialized with an empty order' do
      expect(basket.order).to be_empty
    end
  end

end
