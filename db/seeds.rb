# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Creating user 'user created'"
sleep 1
# Create a user
User.create!(
  email: "user@gymapp.com",
  password: "123456",
  password_confirmation: "123456",
  role: "user"
  )

puts "Creating admin 'admin created'"
sleep 1
# Create an admin
User.create!(
  email: "admin_other@gymapp.com",
  password: "123456",
  password_confirmation: "123456",
  role: "admin"
)
puts "Sucessful"
