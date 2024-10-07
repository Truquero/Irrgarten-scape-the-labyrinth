# frozen_string_literal: true
#encoding : UTF−8
class Weapon
  def initialize(power, uses)
    @power = power
    @uses = uses
  end
  def attack
    if @uses > 0
      @uses -= 1
      return @power
    else
      return 0
    end
  end

  def to_s
    "W[" + @power.to_s + "," + @uses.to_s + "]"
  end
  def discard
    d = Dice.new
    d.discardElement(@uses)
  end
end