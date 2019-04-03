
# Trouver le chiffre le plus grand et renvoyer une phrase en fonction du chiffre
# Renvoyer une autre phrase pour le cas ou un élément du tableau serait vide

# Créer un tableau 

def who_is_bigger(a,b,c)
  arr = Array.new
  arr.push(a,b,c)

# Le tableau contient un élément nil ? Comment vérifier si un tableau contient un élément nil ?
  
  if arr.include? nil 

# Si c'est vrai, renvoyer nil

       "nil detected"
  else 
      if arr.index(arr.max) == 0
           "a is bigger"
      elsif arr.index(arr.max) == 1
           "b is bigger"
      else
           "c is bigger"
      end
  end
  
end


def reverse_upcase_noLTA(string)
  string.gsub(/[atlT]/, '').reverse.upcase
end


def array_42(array)
   array.include?(42)
end

def magic_array(array)
   array.flatten.sort.map{|e| e * 2}.reject{|e| e % 3 == 0}.uniq
end
