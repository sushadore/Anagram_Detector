class String
  define_method(:anagram?) do |word2|
    word1 = self.downcase.split("")
    word2 = word2.downcase.split("")

    if word1.reverse == word2
    "palindrome"# is_palindrome = true
    elsif word1.sort == word2.sort
      "anagram" # is_anagram = true
    end
  end
end
