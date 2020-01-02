class Menu

  def print_dishes (menu = dishes)

    menu.each_with_index do |dishes_list, index|
      dishes_list.each do |dish, price|
        puts("#{index + 1}   #{dish}   #{price.to_s}")
      end
    end  
  end 

  def dishes 
    [ {large_pizza: 10.99},
      {medium_pizza: 7.99},
    ]
  end 
end 