Rails.application.routes.draw do
  
  root "home#home"
  
  # root "sessions#home"

  get 'signup' => "users#new"
  post 'signup' => "users#create"
  #login 
  get '/login'  => 'sessions#new' # load the page 
  post '/login'  => 'sessions#create' #processes the info
  #logout 
  get '/logout' => 'sessions#destroy'



  resources :reviews
  resources :museums
  resources :users


  resources :museums do 
    resources :reviews, only: [:new, :create, :index]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
