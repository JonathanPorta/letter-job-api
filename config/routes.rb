Rails.application.routes.draw do
  resources :tasks
  resources :jobs
  resources :users
  resources :recipients
  resources :templates

  get '/jobs/:id/tasks', to: 'jobs#tasks', defaults: { format: 'json' }
  get '/users/:id/assignments', to: 'users#assignments', defaults: { format: 'json' }
  get '/users/:id/creations', to: 'users#creations', defaults: { format: 'json' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
