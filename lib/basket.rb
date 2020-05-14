class Basket

  attr_reader :order, :total

  def initialize
    @order = {}
    @total = total
  end

  def add
    @total = (order.map { |_,y| y}).sum.round(10)
  end
end
