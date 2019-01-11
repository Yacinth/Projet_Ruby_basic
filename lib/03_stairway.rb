#recherches
#def stairs
#stair = 1
# while (stair <= 10)
#    puts ("# " * stair)
#    #.rjust(30, '  T  ') #(a).rjust(b) // espace = b-(nb caractères a) // (nb de caractères a)<b -> il rajoute une chaîne de caractères devant "string a" d'une valeur "b-(nb caractères a)"
#   stair += 1
# end
#end


#on defini les 10 étages  
def stair1
 puts ("##" * 10).rjust(22) #(a).rjust(b) // espace = b-(nb caractères a) // (nb de caractères a)<b -> il rajoute une chaîne de caracteres devant
 #"string a" d'une valeur "b-(nb caractères a)"
end

def stair2
 puts ("##" * 9).rjust(22)
end

def stair3
 puts ("##" * 8).rjust(22)
end

def stair4
 puts ("##" * 7).rjust(22)
end

def stair5
 puts ("##" * 6).rjust(22)
end

def stair6
 puts ("##" * 5).rjust(22)
end

def stair7
 puts ("##" * 4).rjust(22)
end

def stair8
 puts ("##" * 3).rjust(22)
end

def stair9
 puts ("##" * 2).rjust(22)
end

def stair10
 puts ("##" * 1).rjust(22)
end

#l'escalier de 10 etages et le bonhomme T
def stairs
 puts " "
 stair10
 stair9
 stair8
 stair7
 stair6
 stair5
 stair4
 stair3
 stair2
 print "T" 
 stair1
 puts " "
end

def guy
    print "T"
end

stairs

#def tableau
# my_array = [ ]
# my_array << "#{stairs}#{guy}"
# puts my_array
#end

def dé
 random = rand(1..6) #attribue une valeur aléatoire entre 1 et 6 random // fonctionne aussi : rand valeur mais peut tomber sur 0
 puts "Tu as jeté le dé et tu as fait :" 
 puts random #affiche le chiffre sorti aleatoirement
 return random
end

def up  #defini les conditions de  lvl up et lvl down et lvl stay
lvl = 0 #niveau 0 du personnage
 if dé >= 5 #si on fait 5 ou 6
  e = lvl + 1 #on monte une marche
   if lvl == 10 #condition de victoire
   puts "HEIHACHI MISHIMA WIN"
   #sinon on lui dit à quel niveau il est
   else
   puts "bravo tu as gagné 1 lvl, tu es lvl #{e}"
   end
 elsif dé == 1
  e = lvl - 1 #si dé = 1 on descend une marche
  puts "Tu descends ! tu es lvl #{e} maintenant !"
 else #le autres chiffres ne font rien
  puts "essaie encore, tu es toujours #{lvl}"
 end 
end
up   
