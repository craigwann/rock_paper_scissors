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
  expect(game.first_player_win?()).to(eq(true))
  end
  it("will return false if the main player input is scissors and secondary player is rock")do
  game = RPS.new("scissors", "rock")
  expect(game.first_player_win?()).to(eq(false))
  end
  it("will return false if the main player input is scissors and secondary player is paper")do
  game = RPS.new("scissors", "paper")
  expect(game.first_player_win?()).to(eq(true))
  end
  it("will return false if the main player input is paper and secondary player is scissors")do
  game = RPS.new("paper", "scissors")
  expect(game.first_player_win?()).to(eq(false))
  end
  it("will return false if the main player input is rock and secondary player is paper")do
  game = RPS.new("rock", "paper")
  expect(game.first_player_win?()).to(eq(false))
  end
  it("will return true if the main player input is paper and secondary player is rock")do
  game = RPS.new("paper", "rock")
  expect(game.first_player_win?()).to(eq(true))
  end
end





# ####
# def play(input, input2)
#   first_player_win? input to input2
# end
#
# game = RPS.new(player1input)
# game.first_player_win?(player2input)
#
#
# game = RPS.new()
# game.first_player_win?(player1, player2)
