class Computer
  attr_accessor :name, :model

  def initialize(name,model)
    @name = name
    @model = model
  end
end

class Laptop < Computer
  attr_accessor :series

  def initialize(name,model,series)
    super(name,model)
    @series = series
  end
end

class Desktop < Laptop
  attr_accessor :price

  def initialize(name,model,series,price)
    super(name,model,series)
    @price = price
  end

  def getId
    puts "#{name} #{model} #{series}"
  end
end

mac = Desktop.new("Mac", "blue", 9390, 467)
puts mac.getId
