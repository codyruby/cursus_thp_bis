puts "How old are you?"
number=gets.chomp.to_i

number.times do |i|
    x=number-i
    y=i
    puts "#{x} years ago, you were #{y} years old"
    if x==y 
        puts "In #{x}, you were half the age you have today"
    end
end