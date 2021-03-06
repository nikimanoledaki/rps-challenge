class Move
  attr_reader :computer_weapon, :player

  def initialize(player_weapon)
    @player = player_weapon
    @computer_weapon = computer_weapon
  end

  def self.create(player_weapon)
    @move = Move.new(player_weapon)
  end

  def self.instance
    @move
  end

  def computer_weapon
    ["Rock", "Paper", "Scissors"].sample
  end

  def beats(weapon)
    options = { "Rock" => "Scissors", "Paper" => "Rock", "Scissors" => "Paper" }
    options[weapon]
  end

  def calculate_result(player = @player, computer = @computer_weapon)
    if player == computer
      "You tied"
    elsif beats(player) == computer
      "You win"
    else 
      "You lost"
    end
  end

end
