Rails.application.routes.draw do
  root "home#index"
  resources :equipaments
  resources :exercises

  get "up" => "rails/health#show", as: :rails_health_check
end
