class RPS
  def initialize
    @computertally = 0
    @usertally = 0
  end

  def computer
    @computer = rand(1..3) #1=rock, 2=paper, 3=scissors
    if (@computer == 1)
      print "Computer plays 'rock', "
    elsif (@computer == 2)
      print "Computer plays 'paper', "
    elsif (@computer == 3)
      print "Computer plays 'scissors', "
    end
  end



  def userwins(user)
    if (user == 'rock')
      if (@computer == 3)
        @usertally += 1
        puts "You win!"
        return true
      elsif (@computer == 2)
        @computertally += 1
        puts "Computer wins"
        return false
      elsif (@computer == 1)
        puts "Tie"
        return 'tie'
      end
    elsif (user == 'paper')
      if (@computer == 3)
        @computertally += 1
        puts "Computer wins"
        return false
      elsif (@computer == 2)
        puts "Tie"
        return 'tie'
      elsif (@computer == 1)
        @usertally += 1
        puts "You win!"
        return true
      end
    elsif (user == 'scissors')
      if (@computer == 3)
        puts "Tie"
        return 'tie'
      elsif (@computer == 2)
        @usertally += 1
        puts "You win!"
        return true
      elsif (@computer == 1)
        @computertally += 1
        puts "Computer wins"
        return false
      end
    end
  end

  def score
    puts @usertally, @computertally
    return @usertally, @computertally
  end
end

system "clear"
puts "How many rounds would you like to play, enter a number:"
rounds = gets.chomp.to_i
game = RPS.new()

rounds.times do
  print "Enter 'rock' 'paper' or 'scissors': "
  input = gets.chomp
  game.computer
  game.userwins(input)
end

scores = []
scores = game.score
puts "Your score: #{scores[0]}, Computer score: #{scores[1]}"
