require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/rock_paper_scissors')

get('/play/:move1/:move2') do
  game = RockPaperScissorsGame.new(params['move1'], params['move2'])
  @result = game.play()
end
