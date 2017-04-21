require 'sinatra'
require 'sinatra/reloader'
require './lib/anagram'

get '/' do
  erb(:index)
end

get '/anagram-input' do
  main_text = params.fetch("main_text")
  test_text = params.fetch("test_text")

  @result = main_text.anagram(test_text)
  erb(:index)
end
