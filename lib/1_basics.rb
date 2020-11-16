# 1 - Déclaration d'une chaine de caractère
# Déclarer une variable = votre prénom

my_first_name = "Maxime"

# 2 - Déclaration d'un nombre entier
#Déclarer une variable = votre année de naissance

my_birth_year = 1993

# 3 - Opération basique
# Calculer en une ligne votre année de naissance en fonction de votre age en 2020

my_age = Time.new.year - my_birth_year

# 4 - Déclarer une méthode
# Ecrire une méthode qui, à partir de votre année de naissance et de votre prénom, retourne : 
      # - "Bonjour, [votre prénom], en 2020 vous avez eu [age en 2020] ans."

def infos(name, age)
  puts "Bonjour, #{name}, en #{Time.new.year} vous avez eu #{age} ans."
end

# 5 - Ecrire une condition if..else
# Ecrire une méthode qui à partir de votre année de naissance répond : 
#       - "Vous avez le droit de boire une bière" si votre age en 2020 est d'au moins 18 ans
#       - "Vous n'avez pas le droit de boire d'alcool !" si vous avez moins de 18 ans en 2020

def drinking_legal_age(age)
  puts age >= 18 ? "Vous avez le droit de boire une bière" : "Vous n'avez pas le droit de boire d'alcool !"
end

drinking_legal_age(my_age)

# 6 - Déclarer un tableau de valeurs
# Déclarer dans un tableau le nom des 3 neveux de Picsou

picsous_nephews = ["Riri", "Fifi", "Loulou Duck"]

# 7.1 - Boucle
# Afficher au travers d'une boucle le prénom de chacun des neveux de Picsou -> https://www.google.com/search?q=neveux+de+piscou

picsous_nephews.each {|nephew| puts nephew}

# 7.2 - Boucle
# Afficher, au travers d'une boucle, juste les deux premiers neveux de Picsou, pas le troisième.

picsous_nephews.each_with_index {|nephew, i| puts nephew; break if i == 1}

# 8.1 - Case switch
# Parcourir tous les prénom des neuveux de Picsou à travers une boucle. Si le prénom à moins de 5 lettres, afficher 
# "[PRENOM DU NEUVEUX] est facile à retenir", sinon "[PRENOM DU NEVEUX], c'est déjà plus compliqué !"

picsous_nephews.each do |nephew|
  case nephew.length
  when 0..4
    puts "#{nephew} est facile à retenir"
  else
    puts "#{nephew}, c'est déjà plus compliqué !"
  end
end