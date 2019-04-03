class View
   def create_gossip
    puts 'Bonjour, quel est ton nouveau gossip ?'
    puts 'Quel est ton nom :'
    @author = gets.chomp
    puts 'Quel est ton gossip :'
    @content = gets.chomp
    params = { author: @author, content: @content }
    
    return params 
    
   end

   def self.index_gossips(array_to_view)
       
        array_to_view.each do |i|
           
            puts "\nAuteur: #{i.author}\nGossip: #{i.content}\n"
        end
    end
end