require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    'Hello Battle!'
  end

  get '/enter-names' do
    p params
    @player_1_name = params[:player_1_name]
    erb :index
  end

  # start the server if ruby files executed directly
  run! if app_file == $0
end
