def substrings(str, dict)
  dict.reduce({}) do |count, word|
    count[word] = str.downcase.scan(word).length if str.downcase.include?(word)
    count
  end
end

dictionary = 
  %w[below down go going horn how howdy it i low own part partner sit]

small_string = "Howdy partner, sit down! How's it going?"

big_string = <<~TEXT
  "Howdy partner, sit down! How's it going with you? All's well with you? Good
  good. Now do you want to hear the story of the golden horn? You do? Great!
  The story starts with Billy the cowboy and his friend John. One day they
  went down below into a cave that they had heard a rumor about... ... ... ...
  ... Cave-in! ... ... snakes ... spiders ... And when they made it back to town
  after they found the golden horn they sold it to a museum for a considerable
  amount of money that they split fifty-fifty. After that both of them settled
  down, Billy as a rancher and John as a blacksmith."
TEXT

puts <<~OUTPUT_TEXT
  Substrings in:
  "#{small_string}"

  #{substrings(small_string, dictionary)}

  Substrings in:
  #{big_string}
  #{substrings(big_string, dictionary)}
OUTPUT_TEXT