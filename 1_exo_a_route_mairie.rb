require 'nokogiri'
require 'open-uri'


def get_the_email_of_a_townhal_from_its_webpage(temporaire, hashage, name)                                # Definis / parametre / 
  puts temporaire.xpath("/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]").text                # Toujours le même path index / .text = lisible
  hashage[name] = temporaire.xpath("/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]").text     # 
end

def get_all_the_urls_of_val_doise_townhalls(liens)                                                        #
email = Hash.new(0)                                                                                       #

doc = Nokogiri::HTML(open(liens))                                                                         #
size = doc.css("a.lientxt").length                                                                        #

for n in 0...size
  tmp = Nokogiri::HTML(open("http://www.annuaire-des-mairies.com#{doc.css("a.lientxt")[n]['href']}"))     #
  name = doc.css("a.lientxt")[n]['href'].tr("/95/", "").gsub(".html", "").tr(".", "").to_s                #
get_the_email_of_a_townhal_from_its_webpage(tmp,email,name)                                               # Variable contenu
end
puts email                                                                                                # Affiche l'email
end

url = "http://www.annuaire-des-mairies.com/val-d-oise.html"                                               # Affiche l'annuaire
get_all_the_urls_of_val_doise_townhalls(url) 															  #