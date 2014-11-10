my_text = <<TEXT

The lake appeared in the Tunisian desert 
like a mirage; one minute there was nothing but 
scorching sand, the next a large expanse of turquoise 
water.

For locals, roasting in the 40C heat, the temptation 
to cool off in the inviting water quickly overcame any 
fears about the mysterious pool.

Hundreds flocked to what quickly became known as the 
Lac de Gafsa or Gafsa beach to splash, paddle, dive, 
and fling themselves from rocks into the lake, ignoring 
warnings that the water could be contaminated with 
carcinogenic chemicals, riddled with disease or 
possibly radioactive. Even after the water turned a 
murky green, they arrived in droves, undeterred.

TEXT

def word_count(text)
	counter = Hash.new(0)
	new_text = text.split(" ")
	
	new_text.each{|word| counter[word]+= 1}

	sorted = counter.sort

	return sorted.first
end

puts word_count(my_text)