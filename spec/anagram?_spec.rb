require('rspec')
require('anagram?')

describe('String#anagram?') do
  it('returns true if two words are anagrams') do
    expect(('tea').anagram?('eat')).to(eq("anagram"))
  end

  it('correctly identifies anagrams regardless of capitalization') do
    expect(('Act').anagram?('caT')).to(eq("anagram"))
  end

  it('identifies palindromes') do
    expect(('naan').anagram?('naan')).to(eq("palindrome"))
  end

  it('identifies non-words as words without vowels') do
    expect(('get').anagram?('tph')).to(eq("not a word"))
  end

  it('identifies antigrams') do
    expect(('stop').anagram?('end')).to(eq("antigram"))
  end
end
