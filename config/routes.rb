Rails.application.routes.draw do
  resources :article
  root to: 'article#index'
end
