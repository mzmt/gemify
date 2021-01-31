Rails.application.routes.draw do
  root 'about#index'
  get '/:id' => 'plans#show'
  # ユーザーページを作成する
  # resources :users, param: :user_name, only: [:show, :edit, :update]

  # SNSログイン
  post "oauth/callback", to: "oauths#callback"
  get "oauth/callback", to: "oauths#callback"
  get "oauth/:provider", to: "oauths#oauth", as: :auth_at_provider

  resources :plans
  resources :users, param: :user_name, only: [:show, :edit, :update]
  delete 'logout' => 'user_sessions#destroy'
end
