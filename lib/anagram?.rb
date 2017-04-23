class String
  define_method(:anagram?) do |word2|
    word1 = self.downcase.split("")
    word2 = word2.downcase.split("")

    word1.sort == word2.sort

  end
end
