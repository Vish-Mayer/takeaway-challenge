class Menu

  def print_dishes (menu = dishes)
      menu.each_with_index do |dishes_list, index|
        dishes_list.each do |dish_name, dish_price|
          beginning = "#{index + 1}.  #{dish_name}"
          ending = "#{dish_price}".center(10,"-")
          puts(beginning.ljust(30) + ending.rjust(5))
      end
    end  
  end
  
  private 

  def dishes 
    [ 
      {large_pizza: 10.99},
      {medium_pizza: 7.99},
      {large_softdrink: 1.99},
      {medium_softdrink: 1.20}
    ]
  end 
end 