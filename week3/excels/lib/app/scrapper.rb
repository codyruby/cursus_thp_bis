class Scrapper

    # Scrapper Email d'une mairie à partir de sa page web.
    
    def get_townhall_email(url)
        doc = Nokogiri::HTML(open(url))
    
        email = doc.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]')
        
        email.text
    end
    
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
    end
    
    def save_as_JSON
        File.open("db/emails.json","w") do |f|
        f.write(@townhall_email_list.to_json)
        end
    end

    def save_as_spreadsheet
        # creates a Google Drive API session
        session = GoogleDrive::Session.from_config("config.json")

        ws = session.spreadsheet_by_key("1dhecwU_mDYAvirGj7BOvErkK7LKoWjhIFD_ssx1Zh_o").worksheets[0]
        
        #Je crée un boucle qui récupère les éléments du tableau de hash @townhall et qui les écrit dans le tableau spreadsheet à deux colonnes 
        i = 1
        @townhall_email_list.each do |townhall_name, townhall_email|
        ws[i, 1] = townhall_name
        ws[i, 2] = townhall_email
        i += 1
        end
        ws.save
    end

    def save_as_csv
        # Je défini un tableau qui servira de première ligne pour le fichier csv ci-dessous 
        header = [
            'townhall name',
            'townhall email'
          ]

        # Permet d'ouvrir le fichier csv et d'écrire dedans le hash @townhall au format csv.   
        CSV.open('db/emails.csv', "wb", :headers => header, :write_headers => true) do |csv|
            @townhall_email_list.each do |hash|
              csv << hash
            end    
        end
    end
end


# Création l'objet s à partir de la classe Scrapper   
s=Scrapper.new()
# J'execute la méthode get_departement sur l'objet s
s.get_department("https://www.annuaire-des-mairies.com/val-d-oise.html")
# Je sauvegrade le scrap dans un fichier json
s.save_as_JSON
# Je sauvegrade le scrap dans un fichier un tableau google_spreadsheet
s.save_as_spreadsheet
# Je sauvegrade le scrap dans un fichier csv
s.save_as_csv
