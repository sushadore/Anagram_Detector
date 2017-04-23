class String
  define_method(:anagram?) do |word2|
    word1 = self.downcase.split("")
    word2 = word2.downcase.split("")
    vowels = ["a", "e", "i", "o", "u", "y"]


    if !word1.any? { |l| vowels.include? l } || !word2.any? { |l| vowels.include? l }
      "not a word" # not_a_word = true
    elsif !word1.any? { |i| word2.include? i }
      "antigram" # antigram = true
    elsif word1.reverse == word2 # word1.revers == word1 || word2.reverse == word2
      "palindrome" # is_palindrome = true
    elsif word1.sort == word2.sort
      "anagram" # is_anagram = true
    end
  end
end
