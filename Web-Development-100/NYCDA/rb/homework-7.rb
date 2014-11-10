# Create a function that takes a string and adds 
# the phrase “Only in America!” to the end of it

def only_in_america(some_string)
  # some_string + " Only in America!"
  "#{some_string}...Only in America"
end

p only_in_america("Chicken Wings")


# Create a function to find the maximum value in an array of numbers. For instance:
# [100,10,-1000]

# should return 100.

# def find_max_value(array_of_numbers)


# end

# find_max_value([100,10,-1000])

def find_max(some_array)
  max = some_array[0]
  some_array.each do |number|
    if number > max
      max = number
    end
  end
  max
end

p find_max([100,1000,10000])
p find_max([-50, -100, -500])

# write an algorithm that compares the first number to the second, etc etc



# first time the loop runs, number = 100, number is greater than max, so max becomes number
# second time the loop runs, number = 10, number is NOT greater than max, which is set to 100. max stays at 100.
# third time the loop runs, number = -1000. number isNOT greater than max, which is set to 100. max stays at 100



# if one number is greater than the other, that  becomes the maximum number.





# Create a function that takes two arguments - both of them arrays. 
#Inside of the function, combine the arrays using the items from the
#first array as keys and the second array as values. For example, when
#these two arrays are supplied as arguments:

# [:toyota, :tesla]
# [“Prius”, “Model S”]

# they should return a hash like so:
# {toyota: “Prius”, tesla: “Model S”}

def make_hash(array_one, array_two)
  a_hash = {}
  n = 0
  array_one.each do |item|
    a_hash[item] = array_two[n]
    n += 1
  end
  a_hash
end

p make_hash([:toyota, :tesla], ["Prius", "Model S"])




# Write a program that prints the numbers from 1 to 100.
#But for multiples of three print “Fizz” instead of the number
#and for multiples of five print “Buzz”. Print “FizzBuzz” for numbers 
#that are multiples of both 3 and 5.

n = 1
while n < 101
  if n % 3 == 0 && n % 5 == 0
    puts "FizzBuzz"
  elsif n % 3 == 0
    puts "Fizz"
  elsif n % 5 == 0
    puts "Buzz"
  else
    puts n
  end
  n += 1
end


name = "Zach"

if name == "Rob"
  puts "My name is Rob"
elsif name == "John"
  puts "Hi John"
else

end


some_array = []
for some_number in 1..10
  #within this block, some_number will be equal to whichver number the loop is currently on.
  some_array.push(some_number)
end

p some_array.join(" ")




beers = ["heineiken", "yuengling", "red stripe"]

beers.each do |beer|
  p "I enjoy drinking #{beer}"
end



n = 0
while n < 100
  puts n
  n += 1
end


def add_five_and_another_number(some_number, some_other_number)
  some_number + 5 + some_other_number
end

puts add_five_and_another_number(10, 100)



class Car
  attr_accessor :brand
  attr_accessor :color

end


zachs_car = Car.new
zachs_car.brand = "Toyota"
zachs_car.color = "red"
puts zachs_car.inspect

class Person
  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :age

  def full_name
    first_name + " " + last_name
  end

  def self.crazy_people
    puts "People are cray!"
  end

end

class User
  attr_accessor :email
  attr_accessor :password
  attr_accessor :birthday



end















