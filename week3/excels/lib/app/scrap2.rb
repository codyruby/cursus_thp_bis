require 'pry'
require 'rb-readline'
require 'Nokogiri'
require 'open-uri'

class Scrapper

# Scrapper Email d'une mairie à partir de sa page web.

def get_townhall_email(url)
    doc = Nokogiri::HTML(open(url))

    email = doc.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]')
    
    email.text
end

# get_townhall_email("https://www.annuaire-des-mairies.com/95/avernes.html")

# Scrapper l'Url de toutes les villes du Val d'Oise.

def get_townhall_urls(url)
    urls_department = []

    doc = Nokogiri::HTML(open(url))

# Extraire le texte et mettre ça dans un hash 

     doc.xpath("//a[@class=\"lientxt\"]").each do |node|
        urls_department << { name: node.text, url:  "http://annuaire-des-mairies.com" + node[:href][1, node[:href].size - 1]}
    end

    urls_department
end

# get_townhall_urls("https://www.annuaire-des-mairies.com/val-d-oise.html")

# Scrapper Emails des mairies d'un département.

def get_department(url)
    
    townhall_email_list = []

    doc = Nokogiri::HTML(open(url))

# Appliquer la méthode get_townhall_email sur le hash urls_department et sortir urls

    get_townhall_urls(url).each do |townhall_content|
        townhall_email = get_townhall_email(townhall_content[:url])
        townhall_email_list << { :name => townhall_content[:name], :email=> townhall_email }
    
    end
    p townhall_email_list.class
end

# get_townhall_department("https://www.annuaire-des-mairies.com/val-d-oise.html")

end

s=Scrapper.new()

# s.get_townhall_urls("https://www.annuaire-des-mairies.com/val-d-oise.html")

s.get_department("https://www.annuaire-des-mairies.com/val-d-oise.html")
