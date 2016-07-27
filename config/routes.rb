Rails.application.routes.draw do
  # Omniauth Callback Route
  get '/auth/:provider/callback', to: 'sessions#create'

  resources :tasks
  resources :jobs
  resources :users
  resources :recipients
  resources :templates

  get '/jobs/:id/tasks', to: 'jobs#tasks', defaults: { format: 'json' }
  get '/users/:id/assignments', to: 'users#assignments', defaults: { format: 'json' }
  get '/users/:id/creations', to: 'users#creations', defaults: { format: 'json' }

  get 'login', to: redirect('/auth/google_oauth2')
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  get 'logout', to: 'sessions#destroy'

  # default account page
  get 'me', to: 'sessions#me'

  root to: redirect('/app')
end
