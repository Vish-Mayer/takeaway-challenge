require_relative 'menu'

class Takeaway

  attr_reader :menu

  def initialize(menu = Menu.new) 
    @menu = menu
    return "'.view_menu' to view the menu" 
  end 

  def view_menu 
    @menu.print_dishes 
  end 

end 