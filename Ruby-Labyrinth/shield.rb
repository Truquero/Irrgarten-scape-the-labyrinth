# frozen_string_literal: true
#encoding : UTF−8
class Shield
  def initialize
    @protection=4.0
    @uses=3
  end
end
def protect
  if @uses > 0
    @uses -= 1
    return @protection
  else
    return 0
  end
  def to_s
    return "W[" + @protection.to_s + "," + @uses.to_s + "]"
  end
  def discard
    aux = Dice.new
    return aux.discard_element(@uses)
  end
end