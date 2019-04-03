utilisateurs = [ "Alice", "Bob", "John", "Hector"]

i = 0
utilisateurs.each do |utilisateurs|
    puts i
    i = i + 1
    puts utilisateurs
end

10.times do |i|
    puts "Hello #{i}"
    i.times do
        puts "World"
    end
end