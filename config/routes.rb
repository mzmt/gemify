Rails.application.routes.draw do
  root 'about#index'
  get  'terms',  to: 'about#terms'
  get  'policy', to: 'about#policy'

  get '/:id' => 'plans#show'
  resources :plans, only: %i[create destroy]
  # ユーザーページを作成する
  # resources :users, param: :user_name, only: [:show, :edit, :update]

  # SNSログイン
  post   'oauth/callback',  to: 'oauths#callback'
  get    'oauth/callback',  to: 'oauths#callback'
  get    'oauth/:provider', to: 'oauths#oauth', as: :auth_at_provider
  delete 'logout' => 'user_sessions#destroy'
end
