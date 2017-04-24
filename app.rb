require('sinatra')
require('sinatra/reloader')
require('./lib/anagram?')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @word1 = params.fetch('word1')
  @word2 = params.fetch('word2')
  @result = @word1.anagram?(@word2)
  erb(:result)
end
