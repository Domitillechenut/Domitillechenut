#implementer une course de chevaux
#entrer le nom de 5 chevaux
#connaitre leur rang at 4 steps of the race



horses= ["boudin créole", "vache à lait", "papillard nerveux", "cacahuet", "mustang"]

puts "Horses in departure are : "
horses.each do |horse|
  puts horse
end

puts "bet on a horse."
bet_horse = gets.chomp
puts "\n"

puts "The race start !"

["100m", "200m", "300m", "finally"].each do |step|
  puts "#{step}: the ranking is: "
  state_of_the_race (horses)

puts " at 100 m, the ranking is"
puts state_of_the_race(horses)

if bet_horse == final_ranking[0]




# revient à faire cette ligne
# horses.shuffle.each_with_index { |horse, index| puts "#{index + 1} - #{horse}"}


# shuffle horses
#
# puts "the ranking is : "
# horses.shuffle.each_with_index do |horse, index|
#   puts "#{index + 1} - #{horse}"
# end
