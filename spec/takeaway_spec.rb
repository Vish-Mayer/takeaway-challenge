require 'takeaway' 

describe Takeaway do

  subject(:takeaway) { described_class.new(menu, basket) }
  let(:menu) { double(:menu, dishes: Array, print_dishes: Array) }
  let(:basket) { double(:basket, clean_basket: Array) }
  
  describe '#initialize' do 
    it 'has a menu with dishes and prices' do
      expect(takeaway.menu).to eq(menu)
    end
    it 'has a basket that contains the users order' do 
      expect(takeaway.basket).to eq(basket)
    end  
  end
  
  describe '#view_menu' do
    it 'allows the user to view the menu in a printed format' do 
    expect(takeaway.view_menu).to eq(menu.print_dishes)
    end
  end

  describe '#add_to_basket' do 
    it 'allows the user to add a dish to the basket' do 
      allow($stdin).to receive(:gets).and_return('Large Pizza') 
    end 
  end
  
  describe '#view_basket' do
    it 'allows the user to view the contents of their current order in printed fortmat' do 
    expect(takeaway.view_basket).to eq(basket.clean_basket)
    end 
  end 
end

