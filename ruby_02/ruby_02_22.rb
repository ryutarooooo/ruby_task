# 旅行の場所と値段を配列に収納
# 旅行プランを案内(travel_guidance)
# 旅行プランを選択(selection_travel_plan)
# 人数を選択(selection_travel_count)
# 合計料金を出力(total_price_output)

def travel_guidance(plans)
  plans.each.with_index(1) do |plan, i|
    puts "#{i}. #{plan[:place]}旅行(¥#{plan[:price]})"
  end
end

def selection_travel_plan(plans)
  puts "旅行プランを選択してください"
  print "プランを選択 >"

  plans[gets.to_i - 1]
end

def selection_travel_count(selected_plan)
  puts "#{selected_plan[:place]}旅行ですね、何人で行きますか?"
  print "人数を入力 >"

  gets.to_i
end

def total_price_output(selected_plan, count)
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
end

plans = [
  { place: "沖縄", price: 10000 },
  { place: "北海道", price: 20000 },
  { place: "九州", price: 15000 },
]

travel_guidance(plans)

selected_plan = selection_travel_plan(plans)

count = selection_travel_count(selected_plan)

total_price_output(selected_plan, count)
