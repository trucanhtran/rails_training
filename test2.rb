class A
  attr_accessor :name, :description, :country
  def initialize(name, description, country)
    @name = name
    @description = description
    @country = country
   end

  def running
    puts "run run run"
  end

  def self.speak
    puts "hihihi"
  end

  def self.create(age, email)
    puts "#{age} #{email}s"
  end
end

class B < A
  def eat
    puts "cai gi do #{@color} -- #{@name}"
  end

  def running
    puts "hahahahah"
  end

  def self.create(age)
    puts "#{age}"
  end
end

c = B.new("com)
puts c.eat
