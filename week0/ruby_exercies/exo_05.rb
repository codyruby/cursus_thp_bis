puts "On va compter le nombre d'heures de travail à THP"
puts "Travail : #{10 * 5 * 11}"
# #{} prend en compte le calcul et non le string
puts "En minutes ça fait : #{10 * 5 * 11 * 60}"

puts "Et en secondes ?"

puts 10 * 5 * 11 * 60 * 60
# opération mathématique

puts "Est-ce que c'est vrai que 3 + 2 < 5 - 7 ?"
# string sans pris en compte du calcul car il n'y a pas de #{}

puts 3 + 2 < 5 - 7
# opération mathématique

puts "Ça fait combien 3 + 2 ? #{3 + 2}"
# string + addition
puts "Ça fait combien 5 - 7 ? #{5 - 7}"
# string + soustraction

puts "Ok, c'est faux alors !"

puts "C'est drôle ça, faisons-en plus :"

puts "Est-ce que 5 est plus grand que -2 ? #{5 > -2}"
# revoi un booléen
puts "Est-ce que 5 est supérieur ou égal à -2 ? #{5 >= -2}"
puts "Est-ce que 5 est inférieur ou égal à -2 ? #{5 <= -2}"