def caesar_cipher(string, key)
  new_string = ''
  string.each_byte do |char|
    if char.between?(65, 90)
      new_char = char + key
      while new_char > 90
        new_char -= 26
      end
      while new_char < 65
        new_char += 26
      end
    elsif char.between?(97, 122)
      new_char = char+key
      while new_char > 122
        new_char -= 26
      end
      while new_char < 97
        new_char += 26
      end
    else
      new_char = char
    end
    new_string << new_char
  end
  return new_string
end

puts caesar_cipher("What a string!", 5)


def caesar_decipher(string, key)
  caesar_cipher(string, 26-key)
end

puts caesar_decipher("Bmfy f xywnsl!", 5)
