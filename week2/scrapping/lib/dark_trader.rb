# Il est possible de faire le programme en n'allant que sur une seule URL. C'est un bon moyen pour faire un programme rapide car ne chargeant pas 2000 pages HTML.
# Tout se jouera sur la rédaction d'un XPath pertinent et précis qui extrait juste ce qu'il faut d'éléments HTML. Puis un bon traitement de ces éléments pour en extraire les 2 infos dont tu as besoin : le nom des crypto et leur cours.
# Un programme qui scrappe sans rien te dire, c'est non seulement nul mais en plus, tu ne sais pas s'il marche, s'il tourne en boucle ou s’il attend que ton wifi fonctionne. Mets des puts dans ton code pour que ton terminal affiche quelque chose à chaque fois qu'il a pu récupérer une donnée. Comme ça tu vois ton scrappeur qui fonctionne et avec des mots qui apparaissent tout seul sur ton terminal, tu vas donner l'impression que t'es un hacker. Stylaï.
# Pense à bien nommer tes variables pour ne pas te perdre ! Par exemple, quand tu as un array, nomme-le crypto_name_array ou à minima mets son nom au pluriel crypto_nameS. Sinon tu vas oublier que c'est un array et tu vas tenter des .text dessus alors qu'il faut bosser avec un .each.
# Rappel: un hash s’initialise avec result = Hash.new et on y stocke des infos avec result['ta_key'] = 'ta_value'
# N'hésite pas à découper ton programme en plusieurs étapes simples et dont le fonctionnement est facile à vérifier. Par exemple : 1) Isoler les éléments HTML qui vont bien, 2) En extraire le texte et mettre ça dans un hash, 3) Réorganiser ce hash dans un array de plusieurs mini-hash comme demandé. 
# Même si ça n'est pas le chemin le plus court, l'essentiel est que chaque petite étape te fasse avancer et qu'à chaque fois tu te dises "ok, étape 1), ça fonctionne nickel - pas de bug. Passons à la suite".

require 'open-uri'
require 'nokogiri'


def crypto_price 
    
    doc = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

    list_crypto_and_price = []

    # 1) Isoler les éléments HTML qui vont bien, 
        # Nom : [:href].split("/")[2]    
        # Cours : xpath("//a[@class=\"price\"]")
        
    # 2) En extraire le texte et mettre ça dans un hash 
    doc.xpath("//a[@class=\"price\"]").each do |node|
        list_crypto_and_price << {name: node[:href].split("/")[2], price: node.text}
    end

    # 3) Réorganiser ce hash dans un array de plusieurs mini-hash comme demandé. 
    crypto_price_view = {}
    list_crypto_and_price.each do |value| 
        crypto_price_view[value[:name]] = value[:price]
    end

    p crypto_price_view
        
end


crypto_price



