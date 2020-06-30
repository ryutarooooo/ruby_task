data1 = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
data2 = { name: "yamada", hobby: "baseball", role: "normal" }

puts data1.key?(:age) ? "OK" : "NG"
puts data2.key?(:age) ? "OK" : "NG"

# if data1.key?(:age)
#   puts "OK"
# else
#   puts "NG"
# end
