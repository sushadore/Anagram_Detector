require('rspec')
require('anagram?')

describe('String#anagram?') do
  it('returns true if two words are anagrams') do
    expect(('tea').anagram?('eat')).to(eq(true))
  end
end
