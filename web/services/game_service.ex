defmodule GuessingGame.GameService do

  def get_number() do
    Enum.random(10..99)
  end

  def get_valid_difficulty(difficulty) do
    # if it doesn't match any of our values
    # default to easy
    if difficulty in [:easy, :normal, :hard] do
      difficulty
    else
      :easy
    end
  end

  def get_guesses_for_difficulty(:easy) do
    10
  end

  def get_guesses_for_difficulty(:normal) do
    5
  end

  def get_guesses_for_difficulty(:hard) do
    3
  end

end