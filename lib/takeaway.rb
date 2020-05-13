require_relative 'menu'
require_relative 'basket'

class Takeaway

  attr_reader :menu

  def initialize(menu = Menu.new)
    @menu = menu
  end

  def print_menu
    @menu.print
  end
end
