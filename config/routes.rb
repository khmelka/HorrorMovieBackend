Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/movies', to: 'movies#index'
  # get '/likes', to: 'likes#index'
    post '/likes', to: 'likes#create'

end
