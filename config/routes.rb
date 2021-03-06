Rails.application.routes.draw do
  
  root "home#home"
  
  # root "sessions#home"

  get '/auth/:provider/callback' => 'sessions#omniauth'

  get 'signup' => "users#new"
  post 'signup' => "users#create"
  #login 
  get '/login'  => 'sessions#new' # load the page 
  post '/login'  => 'sessions#create' #processes the info
  #logout 
  get '/logout' => 'sessions#destroy'

  get '/users/:id/reviewed_museums'  => 'museums#display'



  resources :reviews
  # resources :museums
  resources :users, :except => [:edit, :update]


  resources :museums do 
    resources :reviews
  end



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
