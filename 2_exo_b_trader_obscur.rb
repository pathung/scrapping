require 'nokogiri'   # gem nokogiri
require 'open-uri'   # gem open-uri



tab = [] # creation tableau

	while 1
	doc = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))      # liens d'ouverture
	doc.css('a.currency-name-container').each_with_index do | prix, nombre |    # with index qui répond à all et le met dans un hash          
                                     
tab[nombre] = Hash.new(0)                                                       # New Tableau = start 0
  tab[nombre][prix.text] = doc.css('a.price')[nombre].text                      # a.price => code source pour les links
   sleep 0.5                                                                    # Temps d'affichage
  puts tab[nombre]                                                              # Affiche le tableau qui regroupe l'ensemble
end
puts "On le relance toutes les heures !"                                        # Affichage du bonus
sleep (3600 - 1584)                                                             # Tant de minutes dans 1h - les trades
end
