require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/attack'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    @game = Game.create(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]))
    redirect '/play'
  end

  before do
    @game = Game.object
  end

  get '/play' do
    @game
    erb :play
  end

  get '/attack' do
    @game
    erb :attack
  end

  post '/attack' do
    Attack.run(@game.opponent_of(@game.current_player))
    if @game.game_over?
      redirect '/game-over'
    else
      redirect '/attack'
    end
  end

  post '/switch_turns' do
    @game.switch_turns
    redirect('/play')
  end

  get '/game-over' do
    @game
    erb :game_over
  end

  get '/attack-cpu' do
    @game
    erb :attack_cpu
  end

  # start the server if ruby files executed directly
  run! if app_file == $0
end
