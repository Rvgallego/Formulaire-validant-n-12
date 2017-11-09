Rails.application.routes.draw do
  get 'sessions/new'

  get '/auth/:provider/callback', to: 'sessions#create'
  resources :tweets
  root to: "tweets#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
