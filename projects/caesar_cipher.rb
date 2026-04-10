loop do
  puts "Would you like to preform a right shift Caeser cipher? (yes or no)"
  answer = gets.chomp.downcase
  if answer == "yes"
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    shift = 0
    
    puts "Please enter what you would like to encode: "
    starting_string = gets.chomp

    until shift.between?(1, 25)
      puts "Please enter a number between 1 and 25 for the shift: "
      shift = gets.chomp.to_i
    end

    encoded_array = starting_string.chars.map do |char|
      letter = char.downcase

      if alphabet.include?(letter)
        shifted_letter_index = alphabet.index(letter) + shift
        shifted_letter_index -= 26 if shifted_letter_index > 25
        shifted_letter = alphabet[shifted_letter_index]
        char = letter != char ? shifted_letter.upcase : shifted_letter
      end

      char
    end
    
    puts encoded_array.join
  elsif answer == "no"
    puts "Okay thank you for using this program and have a good day."
    break
  end
end