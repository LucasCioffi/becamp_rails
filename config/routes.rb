Becamp::Application.routes.draw do

  # devise_for :users

  root 'content#index'

  get '/about', to: 'content#about'
  get '/schedule', to: 'content#schedule'
  get '/sponsors', to: 'content#sponsors'
  get '/contact', to: 'content#contact'

  get '/admin', to: 'admin#index'

  get '/signin', to: 'sessions#new', as: :signin
  get '/signout', to: 'sessions#destroy', as: :signout
  get '/auth/:provider/callback', to: 'sessions#create'

  get '/register', to: 'users#register'
  post '/register', to: 'users#register'
  get '/mailing_list', to: 'users#email'
  post '/mailing_list', to: 'users#email'
end
