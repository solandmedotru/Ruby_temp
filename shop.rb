require_relative "item_container"
require_relative "item"
require_relative "cart"
require_relative "order"
require_relative "virtual_item"
require_relative "real_item"



  @items = []

  @items << RealItem.new({ :name => "pencil", :price => 101, :weight => 30 })
  @items << RealItem.new({ :name => "pen", :price => 601, :weight => 130 })
  @items << RealItem.new({ :name => "car", :price => 60100, :weight => 1300 })
  @items << VirtualItem.new({ :name => "music", :price => 1600 })





