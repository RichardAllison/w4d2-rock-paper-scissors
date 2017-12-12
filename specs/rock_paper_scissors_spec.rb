require('minitest/autorun')
require('minitest/rg')
require_relative('../models/rock_paper_scissors')

class TestRockPaperScissorsGame < Minitest::Test

  def test_rock_paper()
    rock_paper_scissors_game = RockPaperScissorsGame.new('rock', 'paper')
    assert_equal( "Paper wins!", rock_paper_scissors_game.play() )
  end

  def test_paper_rock()
    rock_paper_scissors_game = RockPaperScissorsGame.new('paper', 'rock')
    assert_equal( "Paper wins!", rock_paper_scissors_game.play() )
  end

  def test_rock_scissors()
    rock_paper_scissors_game = RockPaperScissorsGame.new('rock', 'scissors')
    assert_equal( "Rock wins!", rock_paper_scissors_game.play() )
  end

end
