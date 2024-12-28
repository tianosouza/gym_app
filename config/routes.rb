Rails.application.routes.draw do
  root "home#index"
  devise_for :users

  authenticate :user, ->(user) { user.admin? } do
  end

  get "up" => "rails/health#show", as: :rails_health_check
end
