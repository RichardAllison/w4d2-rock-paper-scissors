require('minitest/autorun')
require('minitest/rg')
require_relative('../models/rock_paper_scissors')

class TestRockPaperScissorsGame < Minitest::Test

  def test_rock_paper()
    rock_paper_scissors_game = RockPaperScissorsGame.new("rock", "paper")
    assert_equal( "Paper wins!", rock_paper_scissors_game.play() )
  end

  def test_paper_rock()
    rock_paper_scissors_game = RockPaperScissorsGame.new("paper", "rock")
    assert_equal( "Paper wins!", rock_paper_scissors_game.play() )
  end

  def test_rock_scissors()
    rock_paper_scissors_game = RockPaperScissorsGame.new("rock", "scissors")
    assert_equal( "Rock wins!", rock_paper_scissors_game.play() )
  end

  def test_scissors_rock()
    rock_paper_scissors_game = RockPaperScissorsGame.new("scissors", "rock")
    assert_equal( "Rock wins!", rock_paper_scissors_game.play() )
  end

  def test_rock_rock()
    rock_paper_scissors_game = RockPaperScissorsGame.new("rock", "rock")
    assert_equal( "It's a draw!", rock_paper_scissors_game.play() )
  end

  def test_paper_scissors()
    rock_paper_scissors_game = RockPaperScissorsGame.new("paper", "scissors")
    assert_equal( "Scissors win!", rock_paper_scissors_game.play() )
  end

  def test_scissors_paper()
    rock_paper_scissors_game = RockPaperScissorsGame.new("scissors", "paper")
    assert_equal( "Scissors win!", rock_paper_scissors_game.play() )
  end

  def test_paper_paper()
    rock_paper_scissors_game = RockPaperScissorsGame.new("paper", "paper")
    assert_equal( "It's a draw!", rock_paper_scissors_game.play() )
  end

  def test_scissors_scissors()
    rock_paper_scissors_game = RockPaperScissorsGame.new("scissors", "scissors")
    assert_equal( "It's a draw!", rock_paper_scissors_game.play() )
  end

  def test_rock_dynamite()
    rock_paper_scissors_game = RockPaperScissorsGame.new("rock", "dynamite")
    assert_equal( "Dynamite is not a valid move", rock_paper_scissors_game.play() )
  end

  def test_jackhammer_rock()
    rock_paper_scissors_game = RockPaperScissorsGame.new("jackhammer", "rock")
    assert_equal( "Jackhammer is not a valid move", rock_paper_scissors_game.play() )
  end

  def test_dynamite_jackhammer()
    rock_paper_scissors_game = RockPaperScissorsGame.new("dynamite", "jackhammer")
    assert_equal( "Neither dynamite nor jackhammer is a valid move!", rock_paper_scissors_game.play() )
  end

  def test_jackhammer_dynamite()
    rock_paper_scissors_game = RockPaperScissorsGame.new("jackhammer", "dynamite")
    assert_equal( "Neither jackhammer nor jackhammer is a valid move!", rock_paper_scissors_game.play() )
  end

end
