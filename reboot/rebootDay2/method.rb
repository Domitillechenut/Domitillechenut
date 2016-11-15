
  def display_wishlist(wishlist)
  wishlist.each_with_index do |item, index|
      if item [:checked]
        puts " #{index + 1} - [X]#{item[:name]}€"
      else
        puts " #{index + 1} - [ ]#{item[:name]}€"
      end
  end
end





# stock = {
#   bananas: {
#     quantity: 10,
#     price: 3
#   },
#   apples: {
#     quantity: 10,
#     price: 4
#   },
#   lemons: {
#     quantity: 10,
#     price: 5
#   }
# }
# cart = {}
# answer = nil # initialize answer
# until answer == "no"
#   puts "Which fruit to add to your cart (bananas, apples, lemons):"
#   fruit = gets.chomp.downcase
#   if stock.keys.include?(fruit.to_sym)
#     puts "How many fruits?"
#     number = gets.chomp.to_i
#     if number <= stock[fruit.to_sym][:quantity]
#       cart[fruit] = {
#         quantity: number,
#         price: stock[fruit.to_sym][:price]
#       }
#       stock[fruit.to_sym][:quantity] -= number
#       puts "Continue shopping?"
#       answer = gets.chomp
#     else
#       puts "Try again, it remains only #{stock[fruit.to_sym][:quantity]} for #{fruit}"
#     end
#   else
#     puts "Try again #{fruit} is not available in our store."
#   end
# end
