price = 10000

# コードを追加
print "人数を入力して下さい > "
number = gets.to_i
if number >= 5
  puts "5人以上なので10%割引となります"
  discount = number * price * 0.9
  puts "合計料金: ￥ #{discount.round}"
else
  puts "合計料金: ￥ #{number * price}"
end
