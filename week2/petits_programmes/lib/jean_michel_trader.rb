# Après la cybersécurité à la NSA, Lehman Brothers veut te débaucher pour faire de la finance.
# Ils te demandent cette fois de coder un programme qui permet,
# à partir d'un array de prix, de connaître le meilleur jour d'achat et le meilleur jour
# de revente pour faire le maximum de bénéfices.

# Si l'on considère l'array de prix suivant : [17, 3, 6, 9, 15, 8, 6, 1, 10],
# la fonction day_trader doit renvoyer qu'il s'agit du deuxième jour à l'achat et du cinquième jour à la revente.


# Instancions l'array des prix

prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

# On doit d'abord trouver le chiffre le plus bas (prix d'achat)

# best_buy_price = prices.min

# p best_buy_price


# On retrouve l'index de ce chiffre.
# On parcourt la suite pour trouver le chiffre le plus haut.
# On retrouve l'index de ce chiffre
# On écrit meilleur jour d'achat avec le jour le plus bas
# On écrit meilleur jour de vente avec le jour le plus haut




# Trouver le meilleur bénéfice

best_buy_price = prices.min
best_sell_price = prices.max

p "Prix le plus bas : " + best_buy_price.to_s
p "Prix le plus haut : " + best_sell_price.to_s

sell_day_index = prices.index(best_sell_price)
buy_day_index = prices.index(best_buy_price)

p "Meilleur jour d'achat : J" + (buy_day_index + 1).to_s  
p "Meilleur jour de vente : J" + (sell_day_index + 1).to_s

# est ce que ça marche sans Marty ?

if buy_day_index > sell_day_index
    p "On ne peut pas vendre avant d'acheter"

else 
    p " Bénéfice : " + (best_sell_price - best_buy_price).to_s
end

# best_benefice = prices.max - prices.min if prices.max.index < prices.min.index

# p best_benefice

puts "========INTERVALLE=========="
# Pour chaque élément de mon tableau, dis moi s'il est possible de réaliser un bénéfice.
prices.each do |price|
borne_basse = prices.index(price)
intervalle = prices.length - borne_basse
p intervalle
end

puts "=========PRICE========="

prices.each do |price|
    borne_basse = prices.index(price)
    intervalle = prices.length - borne_basse
    p price
    end

puts "=========BORNE BASSE========="

prices.each do |price|
    borne_basse = prices.index(price)
    p borne_basse
    end

puts "=================="

prices.each do |price|
    borne_basse = prices.index(price)
    intervalle = prices.length - borne_basse
    benefices_possibles = Array.new
    for i in borne_basse..intervalle
        jour_suivant = borne_basse + i + 1
        
        benefice = prices[jour_suivant] - price
        
        p benefice
        benefices_possibles.push(benefice)
    end
    p benefices_possibles
end
    

# Si oui, dis moi combien pour chacune des valeurs
# Sinon, dis moi que c'est fini pour cette valeur.




