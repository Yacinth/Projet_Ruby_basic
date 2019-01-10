def signup
 puts "bonjour initialise ton mdp"
 print "> "
 mdp = gets.chomp
 return mdp
end

def trytry
 puts "Mets ton mdp pour acceder à to espace secret"
 print "> "
 try = gets.chomp
 return try
end

def login(signup, trytry)
 mdp = signup
 try = trytry

 while ( mdp != try )
  puts "Tu t'es trompé, réssaie"
  try = gets.chomp 
  if try ==  mdp
  puts "ok"
  end
 end
 puts "ok"
end

login(signup, trytry)
