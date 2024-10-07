# frozen_string_literal: true
#encoding : UTF−8
class Dice
  @@MAX_USES =  5
  @@MAX_INTELLIGENCE = 10.0
  @@MAX_STRENGTH = 10.0
  @@RESURRECT_PROB =  0.3
  @@WEAPONS_REWARD = 2
  @@SHIELDS_REWARD = 3
  @@HEALTH_REWARD = 5
  @@MAX_ATTACK = 3
  @@MAX_SHIELD = 2

  def ramdomPos(max)
    rand(max)
  end

  def whoStarts(nplayers)
    rand(nplayers)
  end

  def ramdomIntelligence
    rand(@@MAX_INTELLIGENCE)
  end

  def ramdomStrength
    rand(@@MAX_STRENGTH)
  end

  def resurrectPlayer
    if rand < @@RESURRECT_PROB
      return true
    else
      return false
    end
  end

  def weaponsReward
    rand(@@WEAPONS_REWARD)
  end

  def shieldReward
    rand(@@SHIELDS_REWARD)
  end

  def healingReward
    rand(@@HEALTH_REWARD)
  end

  def weaponPower
    rand(@@MAX_ATTACK)
  end

  def shieldPower
    rand(@@MAX_SHIELD)
  end

  def usesLeft
    rand(@@MAX_USES)
  end

  def intensity(competence)
    rand(competence)
  end

  def discardElement(usesLeft)
    if usesLeft == 0
      return true
    end
    if usesLeft/@@MAX_USES < rand
      return true
    else
      return false
    end
  end
end
