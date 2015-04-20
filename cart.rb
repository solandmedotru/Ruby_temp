class Cart
  attr_reader :items
  include ItemContainer
class ItemNotSupported < StandartError; end


  def initialize(owner)
    @items = Array.new
    @owner = owner
  end

  def save_to_file
    File.open("#{@owner}_cart.txt", "w") do |f|
      @items.each do |i|
        raise ItemNotSupported, if i.class == VirtualItem
        f.puts i.to_s
         end
      end
    end
  end

  def read_from_file
      File.readlines("#{@owner}_cart.txt").each { |i| @items << i.to_real_item }
      @items.uniq!
  rescue Errno::ENOENT
      File.open("#{@owner}_cart.txt", "w") {}
      puts "File #{@owner}_cart.txt created"

  end
end