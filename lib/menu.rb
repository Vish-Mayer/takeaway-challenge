class Menu

  def print
    x = dishes.map { |x, y| x + " " + y.to_s }
    x.each_with_index { |dishes, index|
      cleanlist = dishes.split('_').map(&:capitalize).join(' ')
      puts "#{index + 1}. #{cleanlist}"
    }
  end

  def dishes
    {
      "large_pizza" => 12.99,
      "medium_pizza" => 7.99,
      "small_pizza" => 4.99,
      "drink" => 1.55,
    }
  end
end
