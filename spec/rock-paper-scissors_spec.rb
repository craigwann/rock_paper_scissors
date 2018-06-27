require('rspec')
require('pry')
require('rock-paper-scissors')

describe('RPS#start') do
  it ("returns 'Game On' when a new game is created") do
    game = RPS.new("rock", "scissors")
    expect(game.start()).to(eq("game on"))
  end

  it("returns the main player input ") do
    game = RPS.new("rock", "scissors")
    expect(game.get_main_player_method()).to(eq("rock"))
  end

  it("will return true if the main player input is rock and secondary player is scissors")do
  game = RPS.new("rock", "scissors")
  expect(game.compare()).to(eq(true))
  end
end





# ####
# def play(input, input2)
#   compare input to input2
# end
#
# game = RPS.new(player1input)
# game.compare(player2input)
#
#
# game = RPS.new()
# game.compare(player1, player2)
