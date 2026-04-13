def substrings(str, dict)
  dict.reduce({}) do |count, word|
    if str.downcase.include?(word)
      count[word] = str.downcase.scan(word).length
    end
    count
  end
end

dictionary = 
  %w[below down go going horn how howdy it i low own part partner sit]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)