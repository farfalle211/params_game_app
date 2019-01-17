Rails.application.routes.draw do
  namespace :api do 
    get '/game_params_url' => 'games#uppercase_action'
    get '/string_guessing_game' => 'games#string_guessing_action'
  end 
end
