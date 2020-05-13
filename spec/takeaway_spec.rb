require 'takeaway'
require 'menu'

describe Takeaway do

  subject(:takeaway) { described_class.new }
  let(:menu) { double(dishes: "large pizza: £12.99")}

  describe '#initialize' do
    it 'is initialized with a an instance of the Menu class' do
      expect(takeaway.menu).to be_an_instance_of(Menu)
    end
  end

  describe '#print_menu' do
    it 'prints a list of dishes with their price' do
      expect(takeaway.print_menu).to eq menu.dishes
    end
  end
end
