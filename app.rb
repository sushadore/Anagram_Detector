require('sinatra')
require('sinatra/reloader')
require('./lib/anagram?')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @result = params.fetch('word1').anagram?(params.fetch('word2'))
  erb(:result)
end
