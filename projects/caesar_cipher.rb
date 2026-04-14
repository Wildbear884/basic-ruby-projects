def caesar_cipher(str, shift)
  alphabet = "abcdefghijklmnopqrstuvwxyz"

  str.chars.map do |char|
    letter = char.downcase

    if alphabet.include?(letter)
      shifted_letter_index = alphabet.index(letter) + shift
      shifted_letter_index -= 26 if shifted_letter_index > 25
      shifted_letter = alphabet[shifted_letter_index]
      char = letter != char ? shifted_letter.upcase : shifted_letter
    end
    
    char
  end.join
end

def get_shift
  shift = 0

  until shift.between?(1, 25)
    puts "Please enter a number between 1 and 25 for the shift:"
    shift = gets.chomp.to_i
  end

  shift
end

def get_sentence
  puts <<~WELCOME
    Welcome! This is a right shift Caesar cipher program.
    And FYI this program only changes letters in the English alphabet.
    Please enter what you would like to encode:
  WELCOME

  gets.chomp
end

puts caesar_cipher(get_sentence, get_shift)