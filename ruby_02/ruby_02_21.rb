plans = [
  { place: "沖縄", price: 10000 },
  { place: "北海道", price: 20000 },
  { place: "九州", price: 15000 },
]

# コードを追記
puts "旅行プランを選択してください"
#省略形
# plans.each.with_index(1) { |plan, i| puts "#{i}. #{plan[:place]}旅行(¥#{plan[:price]})" }
plans.each.with_index(1) do |plan, i|
  puts "#{i}. #{plan[:place]}旅行(¥#{plan[:price]})"
end

print "プランを選択 >"

selected_plan = plans[gets.to_i - 1]

puts "#{selected_plan[:place]}旅行ですね、何人で行きますか?"

print "人数を入力 >"

count = gets.to_i
total_price = selected_plan[:price] * count

discount_total_price = (total_price * 0.9).round
#省略形
# puts count >= 5 ? "合計料金:¥#{total_price}" : "合計料金:¥#{discount_total_price}"

if count >= 5
  puts "5人以上なので10%割引となります"
  puts "合計料金:¥#{discount_total_price}"
else
  puts "合計料金:¥#{total_price}"
end
