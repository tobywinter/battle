require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  $game = Game.new

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:Player1])
    $player2 = Player.new(params[:Player2])
    session['Player2_hit_points'] = 50
    redirect to('/play')
  end

  get '/play' do
    @player2_hit_points = session['Player2_hit_points']
    erb(:play)
  end

  get '/attack' do
    $game.attack
    erb(:attack)
  end


  run if app_file == $0
end
