#doit demander un nombre
#un deuxieme
# afficher le résultat
#l'utilisateur doit pouvoir choisir l'opération

require_relative "calculator"

first_number = ask_for_a_number("first")
if is_a_number?(first_number)
  puts "Give me the operation to do "
  operation = gets.chomp
  second_number = ask_for_a_number("second")
  if is_a_number?(second_number)
    puts calculate(operation, first_number, second_number)
  else
    puts display_error_on_number
  end
else
  puts display_error_on_number
end







# puts "Give me a first number"
# first_number = gets.chomp.to_i
#verifier si c'est un nombre
  # if first_number =~ /\d+/
  #   puts "Give me the operation to do "
  #   second_number=gets.chomp
  # else
  #   put "Dude, it's not a nomber, you don't need me"
  # end

  # puts "Give me a second number"
# second_number = gets.chomp.to_i
#verifier si c'est un nombre
