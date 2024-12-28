json.extract! exercise, :id, :name, :instructions, :exercise_type, :is_favorite, :num_exercise, :user_id, :created_at, :updated_at
json.url exercise_url(exercise, format: :json)
