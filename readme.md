Salut ôôôôhh grand correcteur !

Pair programming avec Nathan BITTOUN

--------------------------------------------------------------------------------------

##################################################

1- Exo a) Route de la mairie (la table de hashage sera affichée en fin d'annuaire)

Programme : Ruby :

##################################################

Infos : Scrapping

Récupérer une addresse mail de tout un répertoire




##################################################

2- Exo b) Trader de l'obscure + bonus

Programme : Ruby :

##################################################

Infos : Scrapping Récupérer toutes les infos permet de connaitre le cours de la monnaie

Requis : require 'nokogiri' # gem nokogiri require 'open-uri' # gem open-uri

Nos balises : doc = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/")) # liens d'ouverture doc.css('a.currency-name-container').each_with_index do | prix, nombre | # Liens manip

Permet de gérer le temps d'affichage entre les differentes crypto : sleep 0.5



##################################################

3- Exo c) Route des incubateurs / non traité

Programme : Ruby :

##################################################

--------------------------------------------------------------------------------------

Bonne lecture et merci pour ton indulgence ;-)
Have a nice day, have fun !