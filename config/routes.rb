Rails.application.routes.draw do
  devise_for :users
  root :to => 'tweets#index'

  resources :users do
    resources :tweets
  end
end
