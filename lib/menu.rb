class Menu

  attr_reader :dishes 

  def initialize
    @dishes = dishes
  end  

  def print_dishes (menu = dishes)

    menu.each_with_index do |dishes_list, index|
      dishes_list.each do |dish, price|
        clean_dish = dish.to_s.split('_').map(&:capitalize).join(' ')
        start = "#{index + 1}. #{clean_dish}" 
        finish = '£%.2f' % "#{price}"
        puts(start.ljust(30) + finish.rjust(5))
      end
    end  
  end

  def dishes 
    [ 
      {large_pizza: 10.99},
      {medium_pizza: 7.99},
      {garlic_dip: 0.25}, 
      {large_softdrink: 1.90},
      {medium_softdrink: 1.20}
    ]
  end 
end 