def signup
    puts "Bonjour, initialise ton mot de passe"
    print "> "
    mdp = gets.chomp
 return mdp
end

def trytry
 puts "Mets ton mdp pour acceder à ton espace secret"
 print "> "
 try = gets.chomp
 return try
end

def welcome_screen
 puts "messages échangés avec HULK"
 puts "Hulk : ça m'énerve"
 puts "Hulk : calme-moi"
end

def login(signup, trytry)
 mdp = signup
 try = trytry

while ( mdp != try )
  puts "Tu t'es trompé, réessaie"
  print "> "  
  try = gets.chomp 
   if try ==  mdp
   end
 end
 ok = welcome_screen
end

def perform
    login(signup, trytry)
end

perform
