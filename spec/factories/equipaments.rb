FactoryBot.define do
  factory :equipament do
    name { "Abductor" }
  end

  trait :invalid do
    name { nil }
  end
end
