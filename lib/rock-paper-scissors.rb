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

  def compare()
    if @player_one_input == "rock" && @player_two_input =="scissors"
      return true
    end
  end
end
