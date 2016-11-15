require 'open-uri'
require 'nokogiri'

# faire un moteur de recherche de vtement
# implementer action 5 = ajouter un item depuis etsy
# demander recherche
# resultat de etsy
# demander lequel il veut choisir
# ajouter l'item dans la wishlist

# puts "What item are you looking for?"
# item = gets.chomp

def scrap(item)
  items = []
  html_file = open("https://www.etsy.com/fr/search/clothing?q=#{item}")
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.card-meta').each do |title|
    item_name = title.search(".card-title")[0].text.strip
    item_price = title.search(".currency")[0].text.to_f
    items << {name: item_name, price: item_price}
  end
  return items.first(10)
end

# html_doc.search('.currency.text-smaller').each do |element|
#    puts element.text

#  end
