class Basket

  attr_reader :order, :total

  def initialize
    @order = {} #needs better testing  
    @total = 0 #needs better testing 

  end

  def add #needs better testing 
    @order.each do |dish, price| 
      @total += price 
    end  
  end

  def clean_basket
    printed_items
    puts " " 
    puts "Total amount".ljust(30) + '£%.2f' % @total 
  end 

  def printed_items 
    @order.each do |dish, price|
      clean_dish = dish.to_s.split('_').map(&:capitalize).join(' ')
      start = "#{clean_dish}" 
      finish = '£%.2f' % "#{price}"
      puts start.ljust(30) + finish
    end 
  end
end 


  