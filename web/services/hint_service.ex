defmodule GuessingGame.HintService do

  def get_higher_lower(guess, actual) do
    "The number is higher than your guess"
  end


  def get_hints() do
    [:evenodd, :prime, :divisibleby, :fieldgoal, :firstdigitgreater, :fibonacci,
    :lastdigitgreater, :divisibledigits, :retired, :millenial, :carpetshampooer]
  end

  def get_random_hint(hints) do
    Enum.random(hints)
  end

  def get_hint(guess, :evenodd) do
    "The number is odd"
  end

  def get_hint(guess, :prime) do
    "The number is a prime number"
  end

  def get_hint(guess, :fibonacci) do
    "The number is a part of the fibonacci sequence"
  end

  def get_hint(guess, :divisibleby) do
    "The number is divisible by 4"
  end

  def get_hint(guess, :fieldgoal) do
    "The number is less than the longest field goal made in the NFL"
  end

  def get_hint(guess, :firstdigitgreater) do
    "The number's first digit is greater than it's second"
  end

  def get_hint(guess, :lastdigitgreater) do
    "The number's second digit is greater than it's first"
  end

  def get_hint(guess, :divisibledigits) do
    "The number's first and second digit are divisible by each other'"
  end

  def get_hint(guess, :retired) do
    "If the number were your age, you could retire"
  end

  def get_hint(guess, :millenial) do
    "If the number were your age, you'd be considered a millenial'"
  end

  def get_hint(guess, :carpetshampooer) do
    "If the number were your age, you could legally rent a carpet shampooer"
  end

  

end