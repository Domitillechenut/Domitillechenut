def state_of_the_race(horses)
  shuffled_horses = []
  shuffled_horses = horses.shuffle.each_with_index do |horse, index|
    shuffled_horses << horse
  puts "#{index + 1} - #{horse}"
end
  return shuffled_horses
end
