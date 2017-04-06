Rails.application.routes.draw do
  get 'sessions/new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  post 'localize' => 'sessions#localize'

  root 'static_pages#home'

  resources :products
  resources :users
end
