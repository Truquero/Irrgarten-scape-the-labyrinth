# frozen_string_literal: true

class TestP1
  def main
    arma = Weapon.new
    escudo = Shield.new
    dado = Dice.new
    arma.to_s
    arma.attack
    arma.discard

    escudo.to_s
    escudo.protect
    escudo.discard

    dado.to_s
    dado.discard_element(3)
    dado.healing_reward
    dado.intensity(5)
    dado.ramdom_intelligence
    dado.ramdom_pos(5)
    dado.ramdom_strength
    dado.resurrect_player
    dado.shield_power
    dado.shield_reward
    dado.uses_left
    dado.weapon_power
    dado.weapons_reward
    dado.who_starts(5)
  end
end
