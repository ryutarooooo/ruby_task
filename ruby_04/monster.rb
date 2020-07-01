require "./character"

class Monster < Character
  def attack(brave)
    damage = @offence / brave.defence
    brave.hp -= damage
    brave.hp = 0 if brave.hp < 0

    puts "モンスターの攻撃、勇者は#{damage}のダメージを受けた。勇者のhpは#{brave.hp}になった。"
  end
end
