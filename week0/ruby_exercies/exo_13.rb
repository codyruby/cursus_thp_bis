puts "Hello, what is your year of birth?"
number=gets.chomp.to_i

number2=2019-number

number2.times do |i|
    puts number + i
end