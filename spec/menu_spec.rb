require 'menu'

describe Menu do

  subject(:menu) { described_class.new }
 
  it 'should contain a list of dishes and prices' do
    expect(menu.print_dishes).to be_instance_of(Array)
  end
end 