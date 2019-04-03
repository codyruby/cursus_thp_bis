class Gossip
    attr_reader :author, :content

    def initialize(author, content)
        @content = content
        @author = author
        @arr = Hash.new
        @arr[@author] = @content
    end

    def save
        header = [
            'Author',
            'Content'
        ]
        CSV.open('db/gossip.csv', "a", :headers => header) do |csv|
           @arr.each do |hash|
            csv << hash
           end
        end
    end

    def delete
        
    end

    def self.all
        @all_gossips = []
        CSV.foreach('db/gossip.csv') do |author, content|
            gossip_provisoire = Gossip.new(author, content) 
            @all_gossips << gossip_provisoire 
         end
         p @all_gossips
        return @all_gossips 
    end


end


