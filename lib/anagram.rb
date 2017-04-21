class String
  def anagram(test_string)
    filtered_input = self.gsub(/\W+/, '').downcase

    word_array = filtered_input.split('')
    test_word_array = test_string.gsub(/\W+/, '').downcase.split('')

    match_counter = 0
    test_word_array.each do |letter|
      if word_array.include?(letter)
        match_counter += 1
      end
    end

    if match_counter == word_array.length
      if filtered_input == filtered_input.reverse
        "It's an anagram, AND a palindrome"
      else
        "It's an anagram!"
      end
    end

  end
end
