Rails.application.routes.draw do
  get 'users/index'

  devise_for :users
  root to: "posts#index"
  resources :posts do
    resources :comments
  end
end
