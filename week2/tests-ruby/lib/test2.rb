# Créer tableau contenant les voyelles
VOWEL = ["a", "e", "i", "o", "u"]

# Séparer les lettres de la chaîne de caractère
def translate(string)
    puts string + "ay" if start_with_wovel?(string)
    puts string.reverse + "ay" if start_with_consonant?(string)
end

def start_with_wovel?(word)
    VOWEL.include?(word[0])
end

def start_with_two_consonant?(word)
    !VOWEL.include?(word[0,2])
end

def start_with_consonant?(word)
    !VOWEL.include?(word[0])
end


translate("cherry")


