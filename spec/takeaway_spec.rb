require 'takeaway' 

describe Takeaway do

  subject(:takeaway) { described_class.new(menu) }
  let(:menu) { double(:menu, print_dishes: Array) } 
  
  describe '#initialize' do 
    it 'has a menu with dishes and prices' do
      expect(takeaway.menu).to eq(menu)
    end
  end
  
  describe '#view_menu' do
    it 'allows the user to view an order' do 
    expect(takeaway.view_menu).to eq(menu.print_dishes)
    end
  end
end

