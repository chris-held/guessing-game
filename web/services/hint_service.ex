defmodule GuessingGame.HintService do
  require Integer

  def get_higher_lower(guess, actual) do
    IO.puts(actual)
    if (actual > guess) do
      "The number is higher than your guess"
    else
      "The number is lower than your guess"
    end
    
  end


  def get_hints() do
    [:evenodd, :prime, :fieldgoal, :fibonacci,
     :retired, :millenial, :carpetshampooer]
  end

  def get_random_hint(hints) do
    Enum.random(hints)
  end

  def get_hint(guess, :evenodd) do
    if Integer.is_even(guess) do
      "The number is even"
    else
      "The number is odd"
    end
  end

  def get_hint(guess, :prime) do
    if Enum.member?([11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97], guess) do
      "The number is a prime number"
    else
      "The number is not a prime number"
    end
  end

  def get_hint(guess, :fibonacci) do
    if Enum.member?([13, 21, 34, 55, 89], guess) do
      "The number is a part of the fibonacci sequence"
    else
      "The number is not part of the fibonacci sequence"
    end
    
  end

  def get_hint(guess, :fieldgoal) do
    if guess > 63 do 
      "The number is greater than the longest field goal made in the NFL"
    else
      "The number is less than the longest field goal made in the NFL"
    end
    
  end

  def get_hint(guess, :retired) do
    if guess > 65 do
      "If the number were your age, you could retire"
    else
      "If the number were your age, you wouldn't be able to retire"
    end
    
  end

  def get_hint(guess, :millenial) do
    if guess > 35 do
      "If the number were your age, you wouldn't be considered a millenial"
    else
      "If the number were your age, you'd be considered a millenial"
    end
    
  end

  def get_hint(guess, :carpetshampooer) do
    if guess > 24 do
      "If the number were your age, you could legally rent a carpet shampooer"
    else
      "If the number were your age, you wouldn't be able to legally rent a carpet shampooer"
    end
    
  end

  

end