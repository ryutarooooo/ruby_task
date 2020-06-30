puts <<~TEXT
       旅行プランを選択してください
       1. 沖縄旅行（¥10000）
       2. 北海道旅行（¥20000）
       3. 九州旅行（¥15000）

     TEXT

# コードを追加

print "プランを選択 >"
number = gets.to_i

if number == 1
  puts "沖縄旅行ですね、何人で行きますか？"
  print "人数を入力＞"
  count = gets.to_i
  puts "合計料金:￥#{count * 10000}"
elsif number == 2
  puts "北海道旅行ですね、何人で行きますか？"
  print "人数を入力＞"
  count = gets.to_i
  puts "合計料金:￥#{count * 20000}"
elsif number == 3
  puts "九州旅行ですね、何人で行きますか？"
  print "人数を入力＞"
  count = gets.to_i
  puts "合計料金:￥#{count * 15000}"
else
  puts "正しい数字を入力してください"
end
