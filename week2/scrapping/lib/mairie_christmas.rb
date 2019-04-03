require 'open-uri'
require 'nokogiri'

# Scrapper Email d'une mairie à partir de sa page web.

def get_townhall_email(townhall_url)
    doc = Nokogiri::HTML(open(townhall_url))

    email = doc.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]')
    
    email.text
end

get_townhall_email("https://www.annuaire-des-mairies.com/95/avernes.html")

# Scrapper l'Url de toutes les villes du Val d'Oise.

def get_townhall_urls(townhall_urls)
    urls_department = []

    doc = Nokogiri::HTML(open(townhall_urls))

# Extraire le texte et mettre ça dans un hash 

     doc.xpath("//a[@class=\"lientxt\"]").each do |node|
        urls_department << { name: node.text, url:  "http://annuaire-des-mairies.com" + node[:href][1, node[:href].size - 1]}
    end

    urls_department
end

get_townhall_urls("https://www.annuaire-des-mairies.com/val-d-oise.html")

# Scrapper Emails des mairies d'un département.

def get_townhall_department(townhall_url_department)
    
    townhall_email_list = []

    doc = Nokogiri::HTML(open(townhall_url_department))

# Appliquer la méthode get_townhall_email sur le hash urls_department et sortir urls

    get_townhall_urls(townhall_url_department).each do |townhall_content|
        townhall_email = get_townhall_email(townhall_content[:url])
        townhall_email_list << { :name => townhall_content[:name], :email=> townhall_email }
    
    end
    p townhall_email_list
end

get_townhall_department("https://www.annuaire-des-mairies.com/val-d-oise.html")










