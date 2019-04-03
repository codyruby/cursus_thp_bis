dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

# Compter les mots d'un texte appartenant à un dictionnaire
def word_counter(text, dictionary)    
    # Créér un hash vide qui prendra le nombre d'occurences 
        occurence = Hash.new(0)
    # Créer un tableau avec pour item chaques mots
        text_arr = text.downcase.split
     
        # dictionary.each |dictionary_word| do
        # end
    
        # text_arr.each |text_word| do
    
        #     occurence[dictionary_word] += 1 if text_word.include? dictionary_word
        # end 
    # end
    
    return Hash.new
    
end
    

p word_counter("Howdy partner, sit down! How's it going?", dictionary)