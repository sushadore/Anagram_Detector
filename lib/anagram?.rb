class String
  def anagram? (word2)
    word1 = self.downcase.delete("^a-z").split("")
    word2 = word2.downcase.delete("^a-z").split("")
    vowels = ["a", "e", "i", "o", "u", "y"]

    if !word1.any? { |l| vowels.include? l } || !word2.any? { |l| vowels.include? l }
      "Please check that both entries are words."
    elsif !word1.any? { |i| word2.include? i }
      "These words are not anagrams, but they are antigrams!"
    elsif word1.reverse == word1 || word2.reverse == word2
      "Congratulations! These words are both anagrams and palindromes!"
    elsif word1.sort == word2.sort
      "Yay! These words are anagrams!"
    else
      "These words are not anagrams."
    end
  end
end
