require_relative 'menu'
require_relative 'basket'
require_relative 'text_message'

class Takeaway

  attr_reader :menu, :basket, :text_message

  def initialize(menu = Menu.new,
                 basket = Basket.new,
                 text_message = TextMessage.new)
    @menu = menu
    @basket = basket
    @text_message = text_message
  end

  def print_menu
    menu.print
  end

  def add_to_basket(item, quantity = 1)
    menu.dishes.each { |dish, price|
      clean_dish = dish.to_s.split('_').map(&:capitalize).join(' ')
      if item.match? Regexp.union(clean_dish)
        dish = "#{quantity}x #{dish}"
        basket.order.store(dish, price * quantity)
        basket.add
      end
    }
  end

  def checkout
    text_message.send(basket.total)
  end

  def view_basket
    basket.view
  end
end
