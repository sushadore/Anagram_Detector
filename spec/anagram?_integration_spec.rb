require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the anagram? path', {:type => :feature}) do
  it('takes two words and determines if they are anagrams') do
    visit('/')
    fill_in('word1', :with => 'act')
    fill_in('word2', :with => 'cat')
    click_button('Go!')
    expect(page).to have_content('Yay! These words are anagrams!')
  end
end
