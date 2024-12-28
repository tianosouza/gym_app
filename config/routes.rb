Rails.application.routes.draw do
  root "home#index"
  devise_for :users
  resources :exercises

  get "up" => "rails/health#show", as: :rails_health_check
end
