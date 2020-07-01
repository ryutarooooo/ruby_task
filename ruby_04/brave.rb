require "./character"

class Brave < Character
  def attack(monster)
    damage = @offence / monster.defence
    monster.hp -= damage
    monster.hp = 0 if monster.hp < 0

    puts "勇者の攻撃、モンスターは#{damage}のダメージを受けた。モンスターのHPは#{monster.hp}になった。"
  end
end
