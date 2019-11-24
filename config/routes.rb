Rails.application.routes.draw do
  root "home#index"
  resources :contact, only: %i(new create)
end
