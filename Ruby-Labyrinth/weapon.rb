# frozen_string_literal: true
#encoding : UTF−8
class Weapon
  def initialize
    @power = 2.0
    @uses = 3
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
    return "W[" + @power.to_s + "," + @uses.to_s + "]"
  end
end