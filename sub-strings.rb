def sub_strings(string, dictionary)
  hash = Hash.new { |hash, key| hash[key] = 1 }
  string = string.split(" ").map!(&:downcase)
  dictionary.each do |substring|
    string.each do |word|
      if word.include?(substring)
        hash.key?(substring) ? hash[substring] += 1 : hash[substring]
      end
    end
  end
  return hash
end


def main()
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  puts sub_strings("below", dictionary)
  puts sub_strings("Howdy partner, sit down! How's it going?", dictionary)
end

main()

# prendere la stringa e convertirla in array, dividendo per parola e poi per lettere(controllare quindi se ho per le mani una lettera)
# Per confrontare le due parole, direi di mantenere due indici e andare avanti fino a quando non finisce la parola di cui si cercano le sottostringhe
#