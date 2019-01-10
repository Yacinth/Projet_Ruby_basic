def half_pyramid
puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "> "
user_number = gets.chomp.to_i
nb = 1
puts "Voici la pyramide :"
    while (nb <= user_number && nb < 26) #&& fonctionne pas, nb < 26 n'est pas pris en compte
        puts "#" * nb
        nb = nb+1
    end
end

def full_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print "> "
    user_number = gets.chomp.to_i
    nb = 1
    puts "Voici la pyramide :"
    while (nb <= user_number && nb < 26) #&& fonctionne pas, nb < 26 n'est pas pris en compte
            nb_space = user_number - nb
            puts "#{ " " * nb_space + "#" * nb }" + "#{ "#" * ( nb-1 ) + " " * nb_space }"
        nb = nb+1
    end
end

def wtf_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)"
    print "> "
    user_number = gets.chomp.to_i #to_i récupère un nombre entier à l'entrée (comme ça si on introduit un symbole, le programme plante pas et met 0)
    while user_number % 2 == 0 #on utilise le modulo pour vérifier si le reste de la division = 0
        #tant que le nombre est bien pair -> on passe dans cette boucle
        puts "Même joueur joue encore. Ramsou voudrait un nombre impair. Combien d'étages veux-tu ?"
        print "> "
        user_number = gets.chomp.to_i
    end
    nb = 1
    puts "Voici la pyramide :"
    #le triange supérieur du losange:
    top = (user_number / 2) +1 #inutile : user_nomber.to_f converti le nombre d'étages en float (nombre décimal sans mots/lettres) pour permettre une division exa$    # to_i+1 permet d'avoir l'entier supérieur après la division
    while (nb <= top && nb < 26) #&& nb < 26 n'est pas pris en compte
        nb_space = top - nb #nb d'espace = la moitié + 1 - 1 donc le nb d'étage de la 1e partie = la moitié de user_number
        puts "#{ " " * nb_space + "#" * nb }" + "#{ "#" * ( nb-1 ) + " " * nb_space }"
        nb = nb+1
    end

    #le triange inferieur du losange:
    nb = (user_number / 2)
    while (nb > 0)
        nb_space = (user_number / 2)+1 - nb
		puts "#{ " " * nb_space + "#" * nb }" + "#{ "#" * ( nb-1 ) + " " * nb_space }"
        nb = nb-1
    end
end

half_pyramid
full_pyramid
wtf_pyramid
