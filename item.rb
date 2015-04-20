class Item
  @@id       = 0
  @@discount = 0.05

  attr_accessor :real_price, :name

  def initialize (options={})
    @name  = options[:name]
    @real_price = options[:price]

  end

  def self.discount
    Time.now.month == 4 ? @@discount += 0.1 : @@discount
  end

  def info
    yield(name)
    yield(price)
  end

  def price
    (@real_price - @real_price * self.class.discount) + tax if @real_price
  end

  private def tax
    type_tax = if self.class == VirtualItem
                 1
               else
                 2
               end
    cost_tax = if @real_price > 5
                 @real_price*0.2
               else
                 @real_price*0.1
               end
    cost_tax + type_tax
  end

end