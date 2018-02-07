class RPS

  def computer
    @computer = rand(1..3) #1=rock, 2=paper, 3=scissors
  end

  def userwins?(user)
    user = 'rock'
    if (user == 'rock')
      if (@computer == 3)
        return true
      elsif (@computer == 2)
        return false
      elsif (@computer == 1)
        return false
      end
    elsif (user == 'paper')
    elsif (user == 'scissors')    
    end
  end


end
