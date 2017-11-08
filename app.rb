require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    'Testing infrastructure working!'
  end

  get '/start' do
    erb(:index)
  end

  get '/play' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    @p1_hp = 0
    @p2_hp = 0
    erb(:play)
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    session[:player_2]= params[:player_2]
    redirect '/play'
  end


  run! if app_file == $0
end
