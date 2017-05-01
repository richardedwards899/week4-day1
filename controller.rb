require('sinatra') #this is our framework package that handles html requests
require('sinatra/contrib/all') #this means we don't need to re-start the server
require('pry-byebug')
require_relative('models/game.rb')

get '/' do
  erb(:home)
end

get '/play/:hand1/:hand2' do
  hand1 = params[:hand1]
  hand2 = params[:hand2]
  game = Game.new(hand1, hand2)
  @winning_object = game.winning_object
  @winner = game.winner
  erb(:notifier)
end