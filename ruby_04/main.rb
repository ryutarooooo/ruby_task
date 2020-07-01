require "./brave"
require "./monster"

# class Character
#   attr_accessor :hp, :offence, :defence

#   def initialize(hp:, offence:, defence:)
#     @hp = hp
#     @offence = offence
#     @defence = defence
#   end
# end

# class Brave < Character
#   def attack(monster)
#     damage = @offence / monster.defence
#     monster.hp -= damage
#     monster.hp = 0 if monster.hp < 0

#     puts "勇者の攻撃、モンスターは#{damage}のダメージを受けた。モンスターのHPは#{monster.hp}になった。"
#   end
# end

# class Monster < Character
#   def attack(brave)
#     damage = @offence / brave.defence
#     brave.hp -= damage
#     brave.hp = 0 if brave.hp < 0

#     puts "モンスターの攻撃、勇者は#{damage}のダメージを受けた。勇者のhpは#{brave.hp}になった。"
#   end
# end

brave = Brave.new(hp: 14, offence: 12, defence: 5)
monster = Monster.new(hp: 11, offence: 10, defence: 4)

loop {
  brave.attack(monster)
  if monster.hp <= 0
    puts "モンスターは倒れた"
    break
  end
  monster.attack(brave)
  if brave.hp <= 0
    puts "勇者は倒れた"
    break
  end
}
