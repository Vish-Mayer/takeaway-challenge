require_relative 'menu'
require_relative 'basket'

class Takeaway

  attr_reader :menu
  attr_reader :basket 

  def initialize(menu = Menu.new, basket = Basket.new)
    @basket = basket 
    @menu = menu
  end 

  def view_menu 
    @menu.print_dishes 
  end 

end 