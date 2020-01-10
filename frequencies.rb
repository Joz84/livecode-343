# on split la sentence en un array
# on cree un hash vide
# on itère sur chaque mot de l'array
#   si le mot existe en tant que cle du hash
#     on incremente la valeur associer a cette cle
#   sinon on cree la cle avec le mot dans le hash avec une valeur de 1
# on retourne le hash

def frequencies(text)
  words = text.downcase.gsub(/[\W]/, " ").split(" ")
  frequencies = {}
  words.each do |word|
    if frequencies.key?(word)
      frequencies[word] += 1
    else
      frequencies[word] = 1
    end
  end
  return frequencies.to_a.sort_by{ |frequency| frequency[1] }.reverse.to_h
end
