require('minitest/autorun')
require('minitest/emoji')
require_relative('../models/game.rb')

class TestGameClass < MiniTest::Test

  def test_paper_beats_rock
    game = Game.new("paper", "rock")
    assert_equal("paper", game.winning_object)
    assert_equal("Player 1", game.winner)
  end

  def test_paper_beats_rock_reversed
    game = Game.new("rock", "paper")
    assert_equal("paper", game.winning_object)
    assert_equal("Player 2", game.winner)
  end

  def test_scissors_beats_paper
    game = Game.new("paper", "scissors")
    assert_equal("scissors", game.winning_object)
    assert_equal("Player 2", game.winner)
  end

  def test_scissors_beats_paper_reversed
    game = Game.new("scissors", "paper")
    assert_equal("scissors", game.winning_object)
    assert_equal("Player 1", game.winner)
  end

  def test_rock_beats_scissors
    game = Game.new("rock", "scissors")
    assert_equal("rock", game.winning_object)
    assert_equal("Player 1", game.winner)
  end

  def test_rock_beats_scissors_reversed
    game = Game.new("scissors", "rock")
    assert_equal("rock", game.winning_object)
    assert_equal("Player 2", game.winner)
  end

  def test_rock_rock_draw
    game = Game.new("rock", "rock")
    assert_equal("draw", game.winning_object)
    assert_equal("-", game.winner)
  end

  def test_paper_paper_draw
    game = Game.new("paper", "paper")
    assert_equal("draw", game.winning_object)
    assert_equal("-", game.winner)
  end

  def test_scissors_scissors_draw
    game = Game.new("scissors", "scissors")
    assert_equal("draw", game.winning_object)
    assert_equal("-", game.winner)
  end

  # def test_winner_hand1_wins
  #   game = Game.new("rock", "scissors")
  #   assert_equal("Player1", game.winner)
  # end

end