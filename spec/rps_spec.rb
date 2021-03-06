require('rspec')
require('rps')

describe('#play') do
  it("generates a random int between 1-3 to represent computers play") do
    game = RPS.new()
    expect([1,2,3].include?game.computer)
  end
end

describe('#userwins?') do
  it("returns true if user wins and false if computer wins") do
    game = RPS.new()
    computer = game.computer
    if (computer == 1)
      expect(game.userwins("rock")).to(eq('tie'))
      expect(game.userwins("paper")).to(eq(true))
      expect(game.userwins("scissors")).to(eq(false))
    elsif (computer == 2)
      expect(game.userwins("rock")).to(eq(false))
      expect(game.userwins("paper")).to(eq('tie'))
      expect(game.userwins("scissors")).to(eq(true))
    elsif (computer == 3)
      expect(game.userwins("rock")).to(eq(true))
      expect(game.userwins("paper")).to(eq(false))
      expect(game.userwins("scissors")).to(eq('tie'))
    end
  end
end
