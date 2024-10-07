# frozen_string_literal: true
# encoding : UTF−8
require_relative 'weapon'
require_relative 'game_state'
require_relative 'dice'
require_relative 'shield'
class TestP1
  def main
    arma = Weapon.new(5,1)
    escudo = Shield.new(5,1)
    dado = Dice.new

    puts arma.to_s
    puts arma.attack
    puts arma.discard
    puts "\n"
    puts escudo.to_s
    puts escudo.protect
    puts escudo.discard
    puts "\n"
    puts dado.discardElement(4)
    puts dado.healingReward
    puts dado.intensity(5)
    puts dado.ramdomIntelligence
    puts dado.ramdomPos(5)
    puts dado.ramdomStrength
    puts dado.resurrectPlayer
    puts dado.shieldPower
    puts dado.shieldReward
    puts dado.usesLeft
    puts dado.weaponPower
    puts dado.weaponsReward
    puts dado.whoStarts(5)
    puts "\n"
    
  end
end
test = TestP1.new
test.main
