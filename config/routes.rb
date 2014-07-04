Rails.application.routes.draw do
  devise_for :users
  resources :article
  resources :image
  root to: 'article#index'
end
