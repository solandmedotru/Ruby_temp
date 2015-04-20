class Cart
  attr_reader :items
  include ItemContainer



  def initialize(owner)
    @items = Array.new
    @owner = owner
  end

  def save_to_file
    File.open("#{@owner}_cart.txt", "w") do |f|
      @items.each { |i| f.puts "#{i.name}:#{i.real_price}:#{i.weight}" } #car:100:50
    end
  end

  def read_from_file
    return unless File.exists?("#{@owner}_cart.txt")
    item_fields = File.readlines("#{@owner}_cart.txt")
    item_fields.map! { |i| i.chomp }
    item_fields.map! { |i| i.split(":") }
    item_fields.each { |i| @items << RealItem.new(name: i[0], price: i[1].to_i, weight: i[2].to_i ) }
    @items.uniq! { |o| o.name }
  end
end