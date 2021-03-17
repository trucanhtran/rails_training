class Person
  @@zzz = 10
  attr_accessor :name, :age, :sex
  def initialize(zzzzz, age123, bxdsdgdfhg)
    @name = zzzzz
    @age = age123
    @sex = bxdsdgdfhg
  end

  def speak
    puts "hello"
  end

  def run
    puts "run run run"
  end

  def show_info
    puts "#{@name} is #{@age} years old, #{@sex}"
  end

  def age_to_month(num)
    @age * num
  end

  def show_name(str)
    "#{str}  #{@name}"
  end

  def show_names(str1, str2, str3)
    "#{str1} #{str2} #{str3} #{@name}"
  end

  ## class method  instance method
  def self.speaking
    puts "hola"
  end

  def self.running(abc)
    puts "run #{abc} #{@@zzz}"
    @@zzz = 1000
  end
end



man = Person.new("name1", 11, "woman")
puts man.sex
man.sex = "423432423423"
puts man.sex
puts man.speak
puts man.run

woman = Person.new("Anh", 21, "man")
puts woman.name
puts woman.age
puts woman.sex
puts woman.speak
puts woman.run
woman.age = 51
puts woman.age
puts woman.show_info
puts woman.age_to_month(20)
puts woman.show_name("fdsajfhsakjfhasdj")
puts woman.show_names("1cfc", "uhvhg", "ye4yr7y")
puts Person.speaking
puts Person.running(23)
