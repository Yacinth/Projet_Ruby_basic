#recherches
def stairs
stair = 1
 while (stair <= 10)
    puts ("# " * stair)
                #.rjust(30, '        T                   ') #(a).rjust(b) // espace = b-(nb caractères a) // (nb de caractères a)<b -> il rajoute une chaîne de caractères devant "string a" d'une valeur "b-(nb caractères a)"
   stair += 1
 end
end

def guy
    puts "T"
end

def tableau
 my_array = [ ]
 my_array << "#{stairs}#{guy}"
 puts my_array
end

def dé
 random = rand(1...6) #attribue une valeur aléatoire entre 1 et 6 random // rand(valeur min..valeur max)
 puts random #affiche le chiffre sorti aleatoirement
 return random
end

tableau
dé
 
  
    
