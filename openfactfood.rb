require 'open-uri'
require 'json'
loop do
puts "Sur quel produit vous desirez travaillez ? "
puts "Code barre : "
cde_barr = gets.chomp
url =  "http://fr.openfoodfacts.org/api/v0/produit/#{cde_barr}.json"
json = open(url).read
data = JSON.parse(json)
puts data['product']['product_name']

end