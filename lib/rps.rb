class RPS

  def computer
    @computer = rand(1..3) #1=rock, 2=paper, 3=scissors
    if (@computer == 1)
      puts "Computer plays 'rock'"
    elsif (@computer == 2)
      puts "Computer plays 'paper'"
    elsif (@computer == 3)
      puts "Computer plays 'scissors'"
    end
  end

  def userwins(user)
    @computertally = 0
    @usertally = 0
    if (user == 'rock')
      if (@computer == 3)
        @usertally += 1
        return true
      elsif (@computer == 2)
        @computertally += 1
        return false
      elsif (@computer == 1)
        return 'tie'
      end
    elsif (user == 'paper')
      if (@computer == 3)
        @computertally += 1
        return false
      elsif (@computer == 2)
        return 'tie'
      elsif (@computer == 1)
        @usertally += 1
        return true
      end
    elsif (user == 'scissors')
      if (@computer == 3)
        return 'tie'
      elsif (@computer == 2)
        @usertally += 1
        return true
      elsif (@computer == 1)
        @computertally += 1
        return false
      end
    end
  end

  def score
    return @usertally, @computertally
  end
end

puts "How many rounds would you like to play, enter a number:"
rounds = gets.chomp
for (i = 0; i < rounds; i++)
  puts "Enter 'rock' 'paper' or 'scissors'"
  input = gets.chomp
  game = RPS.new()
  game.computer
  game.userwins(input)
  scores = []
  scores = game.score
  puts "Your score: #{scores[1]}"
end  
