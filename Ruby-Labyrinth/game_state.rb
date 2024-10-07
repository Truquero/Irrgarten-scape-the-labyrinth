# frozen_string_literal: true

class GameState
  def initialize(labyrith, players, monsters, currentPlayer, winner, log)
    @labyrith = labyrith
    @players = players
    @monsters = monsters
    @currentPlayer = currentPlayer
    @winner = winner
    @log = log
  end
  attr_reader :labyrith,:players, :monsters, :currentPlayer, :winner, :log
end
