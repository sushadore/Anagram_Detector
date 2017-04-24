require('rspec')
require('anagram?')

describe('String#anagram?') do
  it('returns true if two words are anagrams') do
    expect(('smelt').anagram?('melts')).to(eq("Yay! These words are anagrams!"))
  end

  it('identifies anagrams regardless of capitalization') do
    expect(('Act').anagram?('caT')).to(eq("Yay! These words are anagrams!"))
  end

  it('identifies palindromes') do
    expect(('naan').anagram?('anna')).to(eq("Congratulations! These words are both anagrams and palindromes!"))
  end

  it('identifies non-words as words without vowels') do
    expect(('get').anagram?('tph')).to(eq("Please check that both entries are words."))
  end

  it('identifies antigrams') do
    expect(('stop').anagram?('end')).to(eq("These words are not anagrams, but they are antigrams!"))
  end

  it('identifies phrases which are anagrams') do
    expect(('actor!').anagram?('or act?')).to(eq("Yay! These words are anagrams!"))
  end
end
