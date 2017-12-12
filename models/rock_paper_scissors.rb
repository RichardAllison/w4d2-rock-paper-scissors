class RockPaperScissorsGame

  def initialize(move1, move2)
    @move1 = move1.downcase()
    @move2 = move2.downcase()
  end

  def play()
    if (@move1 == 'rock' || @move1 == 'paper' || @move1 == 'scissors') && (@move2 == 'rock' || @move2 == 'paper' || @move2 == 'scissors')
      if (@move1 == 'rock' && @move2 == 'paper') || (@move1 == 'paper' && @move2 == 'rock')
        return 'paper!'
      elsif (@move1 == 'rock' && @move2 == 'scissors') || (@move1 == 'scissors' && @move2 == 'rock')
        return 'rock!'
      elsif @move1 == 'rock' && @move2 == 'rock'
        return 'It\'s a draw!'
      elsif (@move1 == 'scissors' && @move2 == 'paper') || (@move1 == 'paper' && @move2 == 'scissors')
        return 'scissors!'
      elsif @move1 == 'scissors' && @move2 == 'scissors'
        return 'It\'s a draw!'
      elsif @move1 == 'paper' && @move2 == 'paper'
        return 'It\'s a draw!'
      end
    elsif (@move1 == 'rock' || @move1 == 'paper' || @move1 == 'scissors')
      return "#{@move2.capitalize()} is not a valid move!"
    elsif (@move2 == 'rock' || @move2 == 'paper' || @move2 == 'scissors')
      return "#{@move1.capitalize()} is not a valid move!"
    else
      return "Neither move is valid!"
    end

  end

end
