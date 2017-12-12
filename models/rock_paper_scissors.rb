class RockPaperScissorsGame

  def initialize(move1, move2)
    @move1 = move1.downcase()
    @move2 = move2.downcase()
  end

  def play()
    if (@move1 == 'rock' && @move2 == 'paper') || (@move1 == 'paper' && @move2 == 'rock')
      return 'Paper wins!'
    elsif (@move1 == 'rock' && @move2 == 'scissors') || (@move1 == 'scissors' && @move2 == 'rock')
      return 'Rock wins!'
    elsif @move1 == 'rock' && @move2 == 'rock'
      return 'It\'s a draw!'
    elsif (@move1 == 'scissors' && @move2 == 'paper') || (@move1 == 'paper' && @move2 == 'scissors')
      return 'Scissors win!'
    end
  end

end
