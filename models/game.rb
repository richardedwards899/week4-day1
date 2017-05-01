class Game

  attr_reader :hand_one, :hand_two

  def initialize(hand_one, hand_two)
    @hand_one = hand_one
    @hand_two = hand_two
    @winner = "no game played!"
  end

  def winning_object()
    if hand_one == hand_two
      @winner = "-"
      return "draw" 
    end
    if @hand_one == "rock" && @hand_two == "scissors"
      @winner = "Player 1"
      return "rock"
    end
    if @hand_one == "rock" && @hand_two == "paper"
      @winner = "Player 2"
      return "paper" 
    end
    if @hand_one == "paper" && @hand_two == "scissors"
      @winner = "Player 2"
      return "scissors" 
    end
    if @hand_one == "paper" && @hand_two == "rock"
      @winner = "Player 1"
      return "paper" 
    end
    if @hand_one == "scissors" && @hand_two == "paper"
      @winner = "Player 1"
      return "scissors" 
    end
    if @hand_one == "scissors" && @hand_two == "rock"
      @winner = "Player 2"
      return "rock" 
    end
  end

  def winner
    return @winner
  end

end