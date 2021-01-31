Rails.application.routes.draw do
  root 'about#index'

  get    'login'    => 'user_sessions#new'
  post   'login'    => 'user_sessions#create'
  delete 'logout'   => 'user_sessions#destroy'

  resources :plans
  resources :users, param: :user_name, only: [:show, :edit, :update]
end
