class Character
  attr_accessor :hp, :offence, :defence

  def initialize(hp:, offence:, defence:)
    @hp = hp
    @offence = offence
    @defence = defence
  end
end
