
class Order
  include ItemContainer

  attr_reader :items

  def initialize
    @items = Array.new
    #......
  end

  def place
    # place an order
  end

end