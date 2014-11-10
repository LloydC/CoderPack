class Car   
	attr_accessor :brand   
	attr_accessor :wheels
  
  def turn_on_engine
   puts "engine is on"   
   end
end

my_prius = Car.new
my_prius.brand = "BMW"
my_prius.wheels = 4

my_prius
my_prius.turn_on_engine