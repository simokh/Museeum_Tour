Rails.application.routes.draw do
  root "sessions#home"

  get 'signup' => "users#new"
  post 'signup' => "users#create"
  get '/login'  => 'sessions#new'
  post '/login'  => 'sessions#create'
  get '/logout' => 'sessions#destroy'



  resources :mreviews
  resources :museums
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
