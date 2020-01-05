require 'basket'
require 'takeaway'

describe Basket do

  subject(:basket) { described_class.new }


  it 'contains a list of the users order' do
    expect(basket.order).to be_empty
  end


  it 'contains the customers total bill' do
    expect(basket.total). to eq 0 
  end
    

  it 'prints out the items in the basket order' do
    expect(basket.printed_items).to be_instance_of(Hash)
  end

  it 'prints out the basket items and total' do 
    expect(basket.printed_items).to be_instance_of(Hash)
  end
end
