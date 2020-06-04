require 'takeaway'
require 'menu'
require 'basket'

describe Takeaway do

  subject(:takeaway) { described_class.new }
  let(:menu) { double(print: "large_pizza 12.99") }

  describe '#initialize' do
    it 'is initialized with a an instance of the Menu class' do
      expect(takeaway.menu).to be_an_instance_of(Menu)
    end
  end

  describe '#print_menu' do
    it 'prints a list of dishes with their price' do
      expect(takeaway.print_menu).to include menu.print
    end
  end

  describe '#add_to_basket' do
    it 'adds an item from the menu and quantity into the basket' do
      takeaway.add_to_basket("Large Pizza", 3)
      takeaway.add_to_basket("Drink")
      expect(takeaway.basket.order).to eq "1x drink"=>1.55, "3x large_pizza"=>38.97
      expect(takeaway.basket.total). to eq 40.52
    end
  end

  describe '#view_basket' do
    it 'shows the contents of the basket and returns the total' do
      expect(takeaway.view_basket).to eq takeaway.basket.view
    end
  end
end
