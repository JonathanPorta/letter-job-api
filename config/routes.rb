Rails.application.routes.draw do
  resources :tasks
  resources :jobs
  resources :users
  resources :recipients
  resources :templates
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
