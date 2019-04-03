class Scrapper

    # Scrapper Email d'une mairie à partir de sa page web.
    
    def get_townhall_email(url)
        doc = Nokogiri::HTML(open(url))
    
        email = doc.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]')
        
        email.text
    end
    
    # Scrapper l'Url de toutes les villes du département.
    
    def get_townhall_urls(url)
        urls_department = []
    
        doc = Nokogiri::HTML(open(url))
    
    # Extraire le texte et mettre ça dans un hash 
    
         doc.xpath("//a[@class=\"lientxt\"]").each do |node|
            urls_department << { name: node.text, url:  "http://annuaire-des-mairies.com" + node[:href][1, node[:href].size - 1]}
        end
        urls_department
    end
    
    # Scrapper Emails des mairies d'un département.
    
    def get_department(url)
        
        townhall_email_list = {}
    
        doc = Nokogiri::HTML(open(url))
    
    # Appliquer la méthode get_townhall_email sur le hash urls_department et sortir urls
    
        get_townhall_urls(url).each do |townhall_content|
        townhall_email = get_townhall_email(townhall_content[:url])  
        townhall_email_list[townhall_content[:name]] = townhall_email
        end
        @townhall_email_list = townhall_email_list
    

        def save_as_csv
            # Permet d'ouvrir le fichier csv et d'écrire dans le hash @townhall au format csv.   
            CSV.open('db/emails.csv', "a") do |csv|
                @townhall_email_list.each do |hash|
                csv << hash
                end    
            end
        end
    end
end


# Création l'objet s à partir de la classe Scrapper   
s=Scrapper.new()
# J'execute la méthode get_departement sur l'objet s
s.get_department("https://www.annuaire-des-mairies.com/val-d-oise.html")
# Je sauvegrade le scrap dans un fichier csv
s.save_as_csv
s.get_department("https://www.annuaire-des-mairies.com/seine-et-marne.html")
s.save_as_csv
s.get_department("https://www.annuaire-des-mairies.com/saone-et-loire.html")
s.save_as_csv