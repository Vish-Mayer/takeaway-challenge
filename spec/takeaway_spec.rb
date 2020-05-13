require 'takeaway'

describe Takeaway do

  subject(:takeaway) { described_class.new }

  describe '#print_menu' do
    it 'prints a list of dishes with their price' do
      expect(takeaway.print_menu).to eq "large pizza: £12.99"
    end
  end
end
