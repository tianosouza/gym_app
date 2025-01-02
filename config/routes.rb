Rails.application.routes.draw do
  root "home#index"
  
  namespace :api do
    namespace :v1 do
      resources :exercises
      resources :equipaments
    end
  end

  get "up" => "rails/health#show", as: :rails_health_check
end
