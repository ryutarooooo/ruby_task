# numbers1 = [1, 2, 3, 4, 5]

# numbers2 = []

# numbers1.each do |number|
#   numbers2 << number * 10
# end

# p numbers2

numbers1 = [1, 2, 3, 4, 5]

numbers2 = numbers1.map { |x| x * 10 }

p numbers2
