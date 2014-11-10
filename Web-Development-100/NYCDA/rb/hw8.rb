my_text = <<DOC 

the times that passes when we work is endless except when we like what we do
in which case time flies almost instantly

DOC



def word_count(text)
  counter = Hash.new(0)

  new_text = text.split(" ")

  new_text.each {|word| counter[word] += 1}
 
  max_num = counter.values.sort!.last
  sec_max_num = counter.values.sort!.first 
  
  puts "Most commonly used word is "+ counter.key(max_num) + " occuring #{max_num}" + " times"

 
  
puts "Least commonly used word is "+ counter.key(sec_max_num) +" occuring #{sec_max_num}" + " times"

end

puts word_count(my_text)