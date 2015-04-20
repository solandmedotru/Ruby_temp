class RealItem < Item

  attr_accessor :weight
  def initialize (options)
    @weight = options[:weight]
    super
  end
  def info
    super
    yield(weight)
  end

end