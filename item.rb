class Item
  @@discount = 0.05

  attr_accessor :real_price, :name, :price

  def initialize (name, options={})
    @name  = :name
    @real_price = options[:price]
  end

  def self.discount
    Time.now.month == 4 ? @@discount + 0.1 : @@discount
  end

  def info
    yield(name)
    yield(price)
  end

  def price
    (@real_price - @real_price * self.class.discount) + tax if @real_price
  end

  def to_s
    "#{self.name}:#{self.price}:#{self.weight}"
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