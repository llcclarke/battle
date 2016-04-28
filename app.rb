require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'




class Battle < Sinatra::Base

  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    @game = Game.create(Player.new(params[:player1]), Player.new(params[:player2]))
    redirect '/play'
  end

  get '/play' do
    @game = Game.object
    @game.switch_turns
    erb :play
  end

  post "/attack" do
    @game = Game.object
    @game.attack(@game.alt_player)
    erb :attack
  end

  get '/lose' do
    @game = Game.object
    "GAME OVER! " + @game.loser.name + " loses :("
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
