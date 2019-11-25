require('sinatra')
require('sinatra/contrib/all') if development?

require_relative('models/Game')
also_reload('./models/*') #if anything in the models folder changes, dont worry about restarting the server - sinatra will do it for us

get '/' do
  erb(:home)
end

get '/game/' do
  erb(:game)
end

get '/game/:player1' do
@player1 = params['player1']
@player2 = Game.computer_player
@result = Game.play(@player1,@player2)
#when calling erb sinatra will look for a views folder with the symbol filename
erb(:result)
end
