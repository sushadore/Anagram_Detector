class String
  define_method(:anagram?) do |word2|
    word1 = self.downcase.delete("^a-z").split("")
    word2 = word2.downcase.delete("^a-z").split("")
    vowels = ["a", "e", "i", "o", "u", "y"]


    if !word1.any? { |l| vowels.include? l } || !word2.any? { |l| vowels.include? l }
      "not a word"
    elsif !word1.any? { |i| word2.include? i }
      "antigram"
    elsif word1.reverse == word2
      "palindrome"
    elsif word1.sort == word2.sort
      "anagram" 
    end
  end
end
