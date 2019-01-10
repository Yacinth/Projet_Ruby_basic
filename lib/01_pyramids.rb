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

def reverse_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    n = 5
    while n >= 1
      puts "#" * n
      n = n - 1
    end
end


def wtf_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)"
    print "> "
    user_number = gets.chomp.to_i #to_i récupère un nombre entier à l'entrée (comme ça si on introduit un symbole, le programme plante pas
    while user_number % 2 == 0 #tant que le nombre est bien pair -> on passe dans cette boucle
        puts "Même joueur joue encore. Ramsou voudrait un nombre impair. Combien d'étages veux-tu ?"
        print "> "
        user_number = gets.chomp.to_i
    end
    nb = 1
    puts "Voici la pyramide :"
    #le triange supérieur du losange:
    top = (user_number.to_f / 2).to_i+1 #to_f converti le nombre d'étages en float (nombre décimal) pour permettre une division exacte ; to_i+1 permet d'avoir l'entier supérieur après la division
    while (nb <= top && nb < 26)
        nb_space = top - nb
        puts "#{ " " * nb_space + "#" * nb }" + "#{ "#" * ( nb-1 ) + " " * nb_space }"
        nb = nb+1
    end
    
    #le triange inferieur du losange:
    nb = (user_number.to_f / 2).to_i
    while (nb > 0)
        nb_space = (user_number.to_f / 2).to_i+1 - nb
        puts "#{ " " * nb_space + "#" * nb }" + "#{ "#" * ( nb-1 ) + " " * nb_space }"
        nb = nb-1
    end
end

half_pyramid
full_pyramid
wtf_pyramid
