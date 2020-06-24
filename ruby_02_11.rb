sports = ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]

p sports.flatten!

p sports.uniq!

puts "ユーザーの趣味一覧"
sports.each.with_index(1) { |sport, i| puts "No.#{i} #{sport}" }
