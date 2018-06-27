class RPS

  def initialize(main_player_input, secondary_player_input)
    @player_one_input = main_player_input
    @player_two_input = secondary_player_input
  end

  def start()
    "game on"
  end

  def get_main_player_method()
    @player_one_input
  end

  def first_player_win?()
    if @player_one_input == "rock" && @player_two_input =="scissors"
      true
    elsif @player_one_input =="scissors" && @player_two_input =="rock"
      false
    elsif @player_one_input =="scissors" && @player_two_input =="paper"
      true
    elsif @player_one_input =="paper" && @player_two_input =="scissors"
      false
    elsif @player_one_input =="paper" && @player_two_input =="rock"
      true
    elsif @player_one_input =="rock" && @player_two_input =="paper"
      false
    else
      "Tie"
    end
  end
end
