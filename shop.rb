require_relative "store_application"
StoreApplication.config do |app|
  app.name        = "My Store"
  app.environment = :production

  app.admin do |admin|
    admin.email = "admin@email.com"
    admin.login = "admin"
    admin.send_info_emails_on :mondeys
  end
end
p StoreApplication.environment
p StoreApplication.name
p StoreApplication::Admin.email
p StoreApplication::Admin.login
  @items = []

  @items << RealItem.new( name: "pencil", price: 101, weight: 30 )
  @items << RealItem.new({ name: "pen", price: 601, weight: 130 })
  @items << AntiqueItem.new("car", price: 60100, weight: 1300 )


cart = Cart.new("roman")
cart.add_item RealItem.new({ name: "car", price: 60100, weight: 1300 })
cart.add_item RealItem.new({ name: "car", price: 30100, weight: 1100 })
cart.add_item RealItem.new({ name: "pen", price: 101, weight: 30 })

