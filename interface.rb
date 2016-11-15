# require_relative "instacartmethod"
# implement a stock for 3 items with quantity end unit price


cart = []
product= []
hash = {}

# hash["product"]={ "name" => count , "price" => cost }
hash["banane"]={ count: => 20 , "price" => 5 }
hash["pomme"]={ count: => 12, "price" => 2 }
hash["poire"]={ count: => 15 , "price" => 4 }

puts "Welcome to the supermarket"
# add_a_product(product)
# def add_a_product
answer = nil
until answer == "no"
  puts "Add a product"
  product = gets.chomp
  puts "how many?"
  count = gets.chomp.to_i
  # if product == "banane"
  if hash[product.to_sym][count:]> count
    stock_banane -= banane_count
  else
    puts "Sorry not enough stock of bananes"

  hash["product"] = { count: => count , "price" => cost }

  puts "do u want to continue your shopping?"
  answer = gets.chomp
end


puts "$" * 20
puts "shopping cart"
hash.each do |product, properties|
  puts " - #{properties[count:]} kg of #{product} : #{properties[count:]* properties[count:]}"
end

banane_count=0
if product == "banane"
  if stock_banane > banane[count]
    stock_banane -= banane_count
  else
    puts "Sorry not enough stock of bananes"
elsif product == stock_pomme
  if stock_pomme > pomme[count]
    stock_pomme -= pomme_count
  else
    puts "Sorry not enough stock of pommes"
    # end


# puts "your product is now in the card"

# cart = []
# product= []


# puts "Welcome to the supermarket"
# # add_a_product(product)
# # def add_a_product
# product = nil
# until product == ""
#   puts "Add a product"
#   product = gets.chomp
#   puts "how many?"
#   count = gets.chomp
#   puts "cost?"
#   cost = gets.chomp
#   products = [product, count, cost]
#   cart << product
# end

# cart.delete("")
# puts "$" * 20
# puts "shopping cart"
# cart.each do |product|
#   puts "-#{product}"
# end

