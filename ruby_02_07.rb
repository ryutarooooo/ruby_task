array = ["1", "2", "3", "4", "5"]

# p array.map { |n| n.to_i }

p array.map!(&:to_i)
