def is_the_multiple_of_3_or_5(number)
	sum_multiples = 0
	number.times do |i|
	sum_multiples += i if i%3 == 0 || i%5 == 0
	end
	sum_multiples
end



