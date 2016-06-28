require('sinatra')
require ('sinatra/reloader')
also_reload('lib/**/*.rb')
require ('./lib/numbers_to_words')
require('pry')

get('/') do
  erb(:form)
end

get('/numbers_to_words') do
  @number = params.fetch("number").to_i()
  erb(:numbers_to_words)
end
