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

  def ramdom_pos(max)
    return rand(max)
  end

  def who_starts(nplayers)
    return rand(nplayers)
  end

  def ramdom_intelligence
    return rand(@@MAX_INTELLIGENCE)
  end

  def ramdom_strength
    return rand(@@MAX_STRENGTH)
  end

  def resurrect_player
    if rand < @@RESURRECT_PROB
      return true
    else
      return false
    end
  end

  def weapons_reward
    return rand(@@WEAPONS_REWARD)
  end

  def shield_reward
    return rand(@@SHIELDS_REWARD)
  end

  def healing_reward
    return rand(@@HEALTH_REWARD)
  end

  def weapon_power
    return rand(@@MAX_ATTACK)
  end

  def shield_power
    return rand(@@MAX_SHIELD)
  end

  def uses_left
    return rand(@@MAX_USES)
  end

  def intensity(competence)
    return rand(competence)
  end

  def discard_element(usesLeft)
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
