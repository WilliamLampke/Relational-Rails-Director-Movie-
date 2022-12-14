Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/',  to: 'welcome#index'
  get '/directors', to: 'directors#index'
  get '/directors/new', to: 'directors#new'
  post '/directors', to: 'directors#create'
  get '/directors/:id', to: 'directors#show'
  get '/directors/:id/edit', to: 'directors#edit'
  patch '/directors/:id', to: 'directors#update'
  delete '/directors/:id', to: 'directors#destroy'

  get '/movies', to: 'movies#index'
  get '/movies/new', to: 'movies#new'
  post '/movies', to: 'movies#create'
  get '/movies/:id', to: 'movies#show'
  get '/movies/:id/edit', to: 'movies#edit'
  patch '/movies/:id', to: 'movies#update'
  delete '/movies/:id', to: 'movies#destroy'
end
