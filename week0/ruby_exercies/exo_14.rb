puts "Choose a number"
number=gets.chomp.to_i+1
number.times do |i|
    puts number-i-1
end