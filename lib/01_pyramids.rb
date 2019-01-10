def half_pyramid
puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "> "
user_number = gets.chomp.to_i
nb = 1
puts "Voici la pyramide :"
    while (nb <= user_number && nb < 26)
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
        while (nb <= user_number && nb < 26)
            nb_space = user_number - nb
            puts "#{ " " * nb_space + "#" * nb } "
        nb = nb+1
    end
end
    
full_pyramid

