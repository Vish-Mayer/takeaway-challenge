class Basket

  attr_reader :order, :total

  def initialize
    @order = {}
    @total = total
  end

  def add
    @total = (order.map { |_,y| y}).sum.round(10)
  end

  def view
    print
    total
  end

  def empty?
    total == 0
  end

  private

  def print
    x = order.map { |x, y| x + " " + y.to_s }
    x.each_with_index { |dishes, index|
      cleanlist = dishes.split('_').map(&:capitalize).join(' ')
      puts "#{index + 1}. #{cleanlist}"
    }
  end
end
