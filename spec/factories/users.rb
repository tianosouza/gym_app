FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "fulano_#{n}@gymapp.com" }
    password { "123456" }
    password_confirmation { "123456" }
    role { "user" }
  end
end
