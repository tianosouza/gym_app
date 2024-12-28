FactoryBot.define do
  factory :exercise do
    name { "Press_Triceps_small" }
    instructions { "Target the triceps brachii, focusing on all three heads of the muscle." }
    exercise_type { "A" }
    is_favorite { false }
    num_exercise { "001" }
    association :user
  end
end
