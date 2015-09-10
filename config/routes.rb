Rails.application.routes.draw do
  root 'login#index'
  post 'login' => 'login#create'
  get 'users' => 'users#index'
end
