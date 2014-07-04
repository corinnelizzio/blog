Rails.application.routes.draw do
  devise_for :users
  resources :article
  root to: 'article#index'
end
