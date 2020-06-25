plans = [
  { place: "沖縄", price: 10000 },
  { place: "北海道", price: 20000 },
  { place: "九州", price: 15000 },
]

# コードを追記
puts "旅行プランを選択してください"

plans.each.with_index(1) { |plan, i| puts "#{i}. #{plan[:place]}旅行(¥#{plan[:price]})" }

print "プランを選択 >"

number = gets.to_i
puts "#{plans[number - 1][:place]}旅行ですね、何人で行きますか?"

print "人数を入力 >"

count = gets.to_i

money = plans[number - 1][:price] * count

discount = (money * 0.9).to_i

puts count >= 5 ? "合計料金:¥#{discount}" : "合計料金:¥#{money}"
