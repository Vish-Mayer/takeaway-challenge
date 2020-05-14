require 'takeaway'
require 'menu'
require 'basket'

describe Takeaway do

  subject(:takeaway) { described_class.new }
  let(:menu) { double(dishes: "large_pizza 12.99") }

  describe '#initialize' do
    it 'is initialized with a an instance of the Menu class' do
      expect(takeaway.menu).to be_an_instance_of(Menu)
    end
  end

  describe '#print_menu' do
    it 'prints a list of dishes with their price' do
      expect(takeaway.print_menu).to include menu.dishes
    end
  end

  describe '#add_to_basket' do
    it 'adds an item from the menu and quantity into the basket' do
      takeaway.add_to_basket("Large Pizza", 3)
      takeaway.add_to_basket("Drink")
      expect(takeaway.basket.order).to eq "drink x 1"=>1.55, "large_pizza x 3"=>38.97
    end
  end
end
