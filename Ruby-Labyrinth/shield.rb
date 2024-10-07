# frozen_string_literal: true
#encoding : UTF−8
class Shield
  def initialize(protection, uses)
    @protection=protection
    @uses=uses
  end
  def protect
    if @uses > 0
      @uses -= 1
      return @protection
    else
      return 0
    end
  end
  def to_s
    "W[" + @protection.to_s + "," + @uses.to_s + "]"
  end
  def discard
    d = Dice.new
    d.discardElement(@uses)
  end
end