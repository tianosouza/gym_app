puts "========= Creating default user ========="
sleep 1
  User.create!({
    first_name: "ltianosouzal",
    last_name: "ltianosouzal",
    username: "ltianosouzal",
    email: "ltianosouzal@gymapp.com",
    password_digest: "123456",
    password_confirmation: "123456",
    role: "Admin"
  })
sleep 1
puts "========= User created! ========="
