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
    set_players
    session[:p1_hp] = 0
    session[:p2_hp] = 0
    set_hp
    erb(:play)
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    session[:player_2]= params[:player_2]
    redirect '/play'
  end

  post '/attack_P1' do
    set_players
    session[:p1_hp] += 20
    set_hp
    @message = 'You have attacked player 1, well done'
    erb(:attack)
  end

  post '/attack_P2' do
    set_players
    session[:p2_hp] += 20
    set_hp
    @message = 'You have attacked player 2, well done'
    erb(:attack)
  end

  def set_players
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
  end

  def set_hp
    @p1_hp = session[:p1_hp]
    @p2_hp = session[:p2_hp]
  end
  run! if app_file == $0
end
