require_relative 'menu'
require_relative 'basket'

class Takeaway

  attr_reader :menu, :basket 
    

  def initialize(menu = Menu.new, basket = Basket.new) 
    @menu = menu
    @basket = basket
  end 

  def view_menu  
    @menu.print_dishes
  end

  def view_basket
    @basket.clean_basket 
  end 

  def add_to_basket ## needs more testing 
    order = $stdin.gets 
    @menu.dishes.each do |dishes_list, index|
    dishes_list.each do |dish, price|
      clean_dish = dish.to_s.split('_').map(&:capitalize).join(' ')
      if order.match? Regexp.union(clean_dish) or order.match? Regexp.union(dish) 
        @basket.order.store(dish, price)
        @basket.add 
        return "#{dish} added to basket"
      end 
    end 
  end 


  end
end
         

