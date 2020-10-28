require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    @player_name_one = params[:player_name_one]
    @player_name_two = params[:player_name_two]
    erb :play
  end



  run! if app_file == $0
end
