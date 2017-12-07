def caesar_encode(string, offset)
    alphabet = [*('a'..'z')]
    string = string.split("")
    string.collect do |character|
    if character == character.upcase && alphabet.include?(character.downcase)
      index = (alphabet.index(character.downcase) + offset)%26
      character= alphabet[index].upcase
    elsif alphabet.include?(character)
      index = (alphabet.index(character) + offset)%26
      character = alphabet[index]
    else 
      character
    end
  end.join
end

def caesar_decode(string, offset)
    caesar_encode(string, -(offset))
end