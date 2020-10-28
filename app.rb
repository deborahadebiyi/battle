require 'sinatra/base'


class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name_one] = params[:player_name_one]
    session[:player_name_two] = params[:player_name_two]
    redirect '/play'
  end

  get '/play' do
    @player_name_one = session[:player_name_one]
    @player_name_two = session[:player_name_two]
    erb :play
  end

  get '/attack' do
    @player_name_two = session[:player_name_two]
    erb :attack
  end


  run! if app_file == $0
end
