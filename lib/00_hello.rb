def ask_first_name
 puts "Quel est ton prénom ?"
 print "> " 
 user_name = gets.chomp
 return user_name
end

def say_hello(user_name)
 puts "Hello, #{user_name}!"
end

def perform
 user_name = ask_first_name
 say_hello(user_name)
end

perform
