class Animal
  attr_accessor :color, :age, :height, :weight

  def initialize(color, age, height, weight)
    @color = color
    @age = age
    @height = height
    @weight = weight
  end

  def eat
    puts "icernvjngv"
  end

  def run
    puts "run run"
  end

  def getColor
   puts "#{@color}, #{@age}, #{@height}, #{@weight}"
  end

  def getInfo(b,c,d)
    @weight = b
    @height = c
    @age = d
  end

  def self.gogo(a,b)
    puts "#{a}, #{b}"
  end
end

lion = Animal.new("lion", 2, 1, 50)
lion.eat
lion.run
lion.getColor
puts lion.color
lion.age = 10
puts lion.age
puts lion.getColor
puts lion.getInfo(1,89,124)
puts lion.weight
puts lion.height
Animal.gogo(45,4894)
