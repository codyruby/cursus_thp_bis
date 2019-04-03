class Gossip
    attr_accessor :author, :content

    def initialize(author, content)
        @author = author
        @content = content
    end

    def save
        CSV.open("./lib/db/gossip.csv", "ab") do |csv|
          csv << [@author, @content]
          end   
    end

    def self.all
        all_gossips = []
        CSV.read("./lib/db/gossip.csv").each do |csv_line|
          all_gossips << Gossip.new(csv_line[0], csv_line[1])
        end
        return all_gossips
      end

    #   def find(id)
    #     gossips_choices = []
    #     CSV.read("./lib/db/gossip.csv").each do |csv|
    #         all_gossips << Gossip.new(csv[id])
    #     end
    #         return gossips_choices
    #   end

end