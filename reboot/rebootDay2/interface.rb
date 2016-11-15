
# wishlist = [
#   {name: "name",
#     price: "price",
#     checked: "true or false"}
#   ]
#
require_relative "method.rb"
require 'open-uri'
require 'nokogiri'
require_relative 'scrap.rb'

wishlist = [
{name: "socks", price: 5, checked: true}]

answer = nil
until answer == 5
puts "What do you want to do ?"
puts "1 - List wishlist"
puts "2 - Add an item"
puts "3 - Remove an item"
puts "4 - Mark an item as bought"
puts "5 - Add an item from Etsy"
puts "6 - Exit"
answer = gets.chomp.to_i

  case answer
  when 1
    puts "!" * 20
    puts "My wishlist"
    puts "!" * 20
    wishlist.each do |item|
      if item[:checked]
        puts "[X] #{item[:name]} #{item[:price]}"
      else
        puts "[ ] #{item[:name]} #{item[:price]}"
      end
    end

  when 2
    puts "What do you want to add to your wishlist ?"
    name = gets.chomp
    puts "How many does it cost ?"
    price = gets.chomp.to_i

    new_item = {name: name,
        price: price,
        checked: false}
        wishlist << new_item

  when 3
    puts "Wish item do u want to remove?"
    display_wishlist(wishlist)
    item_index = get.chomp.to_i - 1
    wishlist.delete_at(item_index)

  when 4
    puts "which item did u buy?"
    display_wishlist(wishlist)
    checked_item_index = gets.chomp.to_i - 1
    wishlist[checked_item_index][:checked] = true

  when 5
    puts "What item are you looking for?"
    item = gets.chomp
    item_selection = scrap(item)
    item_selection.each_with_index do |item, index|
      if item [:checked]
        puts " #{index + 1} - [X]#{item[:name]}€"
      else
        puts " #{index + 1} - [ ]#{item[:name]}€"
      end
      end
    puts "Choice of a product"
    item_ok = gets.chomp
    wishlist << item_selection[item_ok-1]
    wishlist.each do |item|
      if item[:checked]
        puts "[X] #{item[:name]} #{item[:price]}"
      else
        puts "[ ] #{item[:name]} #{item[:price]}"
      end


      end
      end






# <div class="card-meta-row-item card-title selected-color">
#                         80 s shorts en jean, lourdement frangés effiloché trim, super haute cintrée, lumière bleu denim, butin court, taille 2 / 26 / petit
#                     </div>
# <span class="currency text-smaller">40,67</span>


