require 'sinatra'

class App < Sinatra::Base

  set :default_content_type, 'application/json'

  get '/games/:id' do
    game = Game.find(params[:id])
    game.to_json
  end

end

run App
