puts "How old aer you?"
number=gets.chomp.to_i

number.times do |i|
    puts "#{number-i} years ago, you were #{i} years old"
end