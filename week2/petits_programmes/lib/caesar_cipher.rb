# Créer une variable qui prend le texte à chiffrer et le transformé via ASCII
# def caesar_cipher(original_text, shift)
# 	final_text = ""

# 	#recalculer le décalage pour qu'il reste inférieur à 26
# 	shift = shift % 26

# 	# Transformer la variable via ASCII
# 	original_text.chars.each do |arr|
		
# 		# Transformer la variable via ASCII
# 		arr_ascii = arr.ord

# 		# Chiffrer en fonction des conditions : [A,Z] et [a,z]
# 		if (arr_ascii >= "A".ord && arr_ascii <= "Z".ord) || (arr_ascii >= "a".ord && arr_ascii <= "z".ord)
			
#          # Décaller en prenant en compte le débordement de l'alphabet
#          if (arr_ascii + shift > "z".ord) || (arr_ascii <= "Z".ord && arr_ascii + shift > "Z".ord)
# 				final_text << (arr_ascii + shift - 26).chr
#                 # Injecter le texte chiffré
#             else
# 				final_text << (arr_ascii + shift).chr
# 			end
# 		else
# 			final_text << arr
# 		end
# 	end
# 	puts final_text
# end


def caesar_cipher(string, d)

# string = 'What a string!'

# p "Mot de départ : " + string

# Définition de la zone d'inclusion
zone = (65..90).to_a + (97..122).to_a




# On veut transformer les caractères compris dans la zone d'inclusion

resultat = Array.new

string.split('').each do |c|
	if zone.include?(c.ord)
		resultat.push(c.ord)
	else
		resultat.push(c)
	end
end

# Resultat avant cryptage décalé
# p "Resultat avant cryptage :"
# p resultat

# Transformation avec décalage de 5

resultat_decale = Array.new

 resultat.each do |c|
	# Le caractère est il un string ?
	if c.instance_of?(String)
		resultat_decale.push(c)
	# Le caractère string a été intégré sans être modifié
	else
		# Peut on intégrer le résultat de l'addition ? Est il compris dans l'inclusion
		if zone.include?(c+d)
			resultat_decale.push(c+d)
			# Nous avons crypté la lettre car le résultat après addition était dans le champ d'inclusion
		else 
			resultat_decale.push(c -26 + d)
			# Nous n'avons pas crypté la lettre car le résultat après addition n'était dans le champ d'inclusion
			# Mais on veut quand même le modifier
		
		end
	end
end

# p "Resultat après décalage :"
# p resultat_decale


# Instanciation du resultat final
resultat_final = Array.new
# On va retransformer en chr

resultat_decale.each do |c|
	if c.instance_of?(String)
		resultat_final.push(c)
	else
		resultat_final.push(c.chr)
	end
end
# p " Résultat après transformation : " + resultat_final.join('')

resultat_final.join('')

end
