require_relative "string"
require_relative "item_container"
require_relative "item"
require_relative "virtual_item"
require_relative "real_item"
require_relative "antique_item"
require_relative "cart"
require_relative "order"




  @items = []

  @items << RealItem.new({ :name => "pencil", :price => 101, :weight => 30 })
  @items << RealItem.new({ :name => "pen", :price => 601, :weight => 130 })
  @items << AntiqueItem.new({ :name => "car", :price => 60100, :weight => 1300 })





