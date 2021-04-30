Rails.application.routes.draw do
  get 'canzones/new'
  get 'canzones/create'
  get 'canzones/destroy'
  get '/' => 'songgoers#show'
  post '/login' => 'sessions#create'
  get '/login' => 'songgoers#show' 
  resources :songs
  post '/logout' => 'sessions#destroy'
  resources :song do
   resource :canzones, only: [:new,:create,:destroy]
  end
end
