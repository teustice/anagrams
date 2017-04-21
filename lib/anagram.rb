class String
  def anagram(test_string)
    filtered_input = self.gsub(/\W+/, '').downcase

    word_array = filtered_input.split('')
    test_word_array = test_string.gsub(/\W+/, '').downcase.split('')

    match_array = []
    vowel_counter = 0
    test_word_array.each do |letter|
      if word_array.include?(letter)
        match_array.push(letter)
      end

      if ["a","e","i","o","u","y"].include?(letter)
        vowel_counter += 1
      end
    end

    if vowel_counter == 0
      "That is not a real word"
    elsif match_array.length == word_array.length
      if filtered_input == filtered_input.reverse
        "It's an anagram, AND a palindrome"
      else
        "It's an anagram!"
      end
    elsif match_array.length == 0
      "These words have no matching letters and are antigrams!"
    else
      "That is not an anagram, but #{match_array.length} letters match: #{match_array.join(',')}."
    end

  end
end
