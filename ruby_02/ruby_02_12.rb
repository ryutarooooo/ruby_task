data = { user: { name: "satou", age: 33 } }

puts data[:user][:name]

puts data.dig(:user, :name)
