Rails.application.routes.draw do
  root "contact#new"
  resources :contact, only: %i(new create)
end
