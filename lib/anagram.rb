class String
  def anagram(test_string)
    word_array = self.downcase.split('')
    test_word_array = test_string.downcase.split('')

    match_counter = 0
    test_word_array.each do |letter|
      if word_array.include?(letter)
        match_counter += 1
      end
    end

    if match_counter == word_array.length
      if self == self.reverse
        "It's an anagram, AND a palindrome"
      else
        "It's an anagram!"
      end
    end

  end
end
