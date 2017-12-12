require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/rock_paper_scissors')

get('/') do
  erb(:home)
end

get('/about') do
  erb(:about)
end

get('/play/:move1/:move2') do
  game = RockPaperScissorsGame.new(params['move1'], params['move2'])
  @result = game.play()
  @move1 = params['move1']
  @move2 = params['move2']
  erb(:gameplay)
end
