Rails.application.routes.draw do
  
  root "sessions#home"

  get 'signup' => "users#new"
  post 'signup' => "users#create"
  #login 
  get '/login'  => 'sessions#new' # load the page 
  post '/login'  => 'sessions#create' #processes the info
  #logout 
  get '/logout' => 'sessions#destroy'



  resources :reviews
  resources :visits
  resources :museums
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
