Rails.application.routes.draw do
  root "home#index"
  resources :contact, only: %i(new create)
  resources :service, only: %i(index)
  resources :presenter, only: %i(index)
  resources :travel, only: %i(index)
end
