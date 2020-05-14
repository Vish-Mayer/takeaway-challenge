require 'menu'

describe Menu do

  subject(:menu) { described_class.new }
  let(:dishes) do
    {
      "large_pizza" => 12.99,
    }
  end

  describe '#dishes' do
    it 'contains dishes with prices' do
      expect(menu.dishes).to include dishes
    end
  end

  describe '#print' do
    it 'displays the menu in a printed format' do
      print_menu = "1. Large Pizza 12.99\n2. Medium Pizza 7.99\n3. Small Pizza 4.99\n4. Drink 1.55\n"
      expect { menu.print }.to output(print_menu).to_stdout
    end
  end
end
