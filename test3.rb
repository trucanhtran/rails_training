class Animal
  attr_accessor :name, :color, :weight, :height

  def initialize(name,color,weight,height)
    @name = name
    @color = color
    @weight = weight
    @height = height
  end
end

class Cat < Animal

  attr_accessor :sex

  def initialize(name,color,sex,weight,height)
    super(name,color,weight,height)
    @sex = sex
  end

end

class Dog < Animal
  attr_accessor :group

  def initialize(name,color,group,weight,height)
    super(name,color,weight,height)
    @group = group
  end
end

class ChildCat < Cat
  attr_accessor :skin, :nail

  def initialize(name, color, group, weight, height, skin, nail)
    super(name, color, group, weight, height)
    @skin = skin
    @nail = nail
  end
end

pussy = ChildCat.new("Pussy", "black", "british", 1, 10, "dot", "long")
puts pussy.name
puts pussy.color
puts pussy.skin
puts pussy.nail
