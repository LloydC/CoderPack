# Take two strings and turns them into the key and value of a hash, i.e. make_hash(:hello, “world”) >{hello: “world”}
def make_hash(string_one, string_two)
  my_hash = {}
  my_hash[string_one] = string_two
  my_hash
end

p make_hash("jan", "January").inspect
# Takes a first and last name and returns a full name

def full_name(first_name, last_name)
  "#{first_name} #{last_name}"
end

p full_name("Zach", "Feldman")

# Generates an <img> tag in HTML given an src as a string (“tiger.jpeg”)
def img_tag(src)
  "<img src='#{src}'>"
end

p img_tag("image.jpg")

# An A+ is above a 97, an A above a 94, and an A- above a 90. A B+ is above an 87, a B is above an 84, and a B- is above an 80. Everything else is an F. Given a grade numerically (90, 86, 40), return a letter grade (A+, B, F).
def get_letter_grade(number_grade)
  if number_grade > 97
    "A+"
  elsif number_grade > 94
    "A"
  elsif number_grade > 90
    "A-"
  elsif number_grade > 87
    "B+"
  elsif number_grade > 84
    "B"
  elsif number_grade > 80
    "B-"
  else
    "F"
  end
end

p get_letter_grade(90)
p get_letter_grade(86)
p get_letter_grade(40)

# Takes a string as an argument and removes any characters that are repeated

def remove_repeated(string)
  last_letter = ""
  fixed_string_array = []
  string.split("").each do |letter|
    if letter == last_letter
      fixed_string_array.pop
    else
      fixed_string_array.push(letter)
    end
    last_letter = letter
  end
  fixed_string_array.join("")
end

p remove_repeated("scotty")




## Object exercises

class User
  attr_accessor :fname
  attr_accessor :lname

  def full_name
    fname + " " + lname
  end

  def say_hello
    puts "Hello World!"
  end

end

some_user = User.new

some_user.fname = "Zach"

some_user.lname = "Feldman"

p some_user.say_hello



p some_user.full_name
