class RPS

  def computer
    @computer = rand(1..3) #1=rock, 2=paper, 3=scissors
  end

  def userwins?(user)
    if (user == 'rock')
      if (@computer == 3)
        return true
      elsif (@computer == 2)
        return false
      elsif (@computer == 1)
        return false
      end
    elsif (user == 'paper')
      if (@computer == 3)
        return false
      elsif (@computer == 2)
        return false
      elsif (@computer == 1)
        return true
      end
    elsif (user == 'scissors')
      if (@computer == 3)
        return false
      elsif (@computer == 2)
        return true
      elsif (@computer == 1)
        return false
      end
    end
  end


end
