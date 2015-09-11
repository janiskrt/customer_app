Rails.application.routes.draw do
  root 'login#index'
  post 'login' => 'login#create'
  delete 'logout' => 'login#destroy'
  get 'users' => 'users#index'
  get 'categories' => 'categories#index'

  resources :users
  resources :categories
end
