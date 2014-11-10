def make_img_tag(image)

end

make_img_tag("tiger.jpg")
# <img src='tiger.jpg'>

class Car
  attr_accessor :brand
  attr_accessor :color

  def turn_on_engine
    puts "WEE ON"
  end

end

my_prius = Car.new
my_prius.brand = "Toyota"
puts my_prius

my_maserati = Car.new
my_maserati.brand = "Maserati"
puts my_maserati


class Student
  attr_accessor :name
  attr_accessor :grade

  def name_and_grade
    "My name is #{name} and my grade is #{grade}"
  end

end

casey = Student.new
casey.name = "Casey"
casey.grade = "A+"
puts casey.inspect
puts casey.name_and_grade







