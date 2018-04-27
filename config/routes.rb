Rails.application.routes.draw do
  resource  :session, only: [ :new, :create, :destroy ]
  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'
  resource  :cart, only: [ :show, :update, :destroy ]
  resources :users
  resources :posts
  resources :followings, only: [ :create ]
  resources :transactions, only: [ :create ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
