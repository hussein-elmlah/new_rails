Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Routes for Post resource
  get '/posts', to: 'posts#index', as: 'posts'
  get '/posts/new', to: 'posts#new', as: 'new_post'
  get '/posts/:id', to: 'posts#show', as: 'post'
  post '/posts', to: 'posts#create'
  get '/posts/:id/edit', to: 'posts#edit', as: 'edit_post'
  patch '/posts/:id', to: 'posts#update'
  delete '/posts/:id', to: 'posts#destroy'

  # Routes for Author resource
  get '/authors', to: 'authors#index', as: 'authors'
  get '/authors/new', to: 'authors#new', as: 'new_author'
  get '/authors/:id', to: 'authors#show', as: 'author'
  post '/authors', to: 'authors#create'
  get '/authors/:id/edit', to: 'authors#edit', as: 'edit_author'
  patch '/authors/:id', to: 'authors#update'
  delete '/authors/:id', to: 'authors#destroy'
  
end
