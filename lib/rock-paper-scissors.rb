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
      return true
    elsif @player_one_input =="scissors" && @player_two_input =="rock"
      return false
    elsif @player_one_input =="scissors" && @player_two_input =="paper"
      return true
    elsif @player_one_input =="paper" && @player_two_input =="scissors"
      return false
    elsif @player_one_input =="paper" && @player_two_input =="rock"
      return true
    elsif @player_one_input =="rock" && @player_two_input =="paper"
      return false
    end
  end
end
