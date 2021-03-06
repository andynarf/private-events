Rails.application.routes.draw do

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to:  'sessions#new', as: 'login'
  post 'login', to: 'sessions#create', as: 'create_session'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  post 'events/:id/attend', to: 'events#attend', as: 'event_attend'

  resources :users
  resources :events
  
  root 'sessions#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
