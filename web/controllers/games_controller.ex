defmodule GuessingGame.GamesController do
  use GuessingGame.Web, :controller

  def show(conn, %{"id" => id}) do
    game = %{
      id: id,
      difficulty: "easy",
      guesses_left: 5
    }
    json conn, game
  end

  def create(conn, %{"difficulty" => difficulty}) do
    game = %{
      id: 1,
      difficulty: difficulty or "easy",
      guesses_left: 5
    }
    json conn, game
  end

  def update(conn, %{"id" => id, "guess" => guess}) do
    game = %{
      id: String.to_integer(id),
      difficulty: "easy",
      guesses_left: 4,
      previous_guess: guess,
      correct: false,
      results: "bar",
      hint: "foo"
    }
    json conn, game
  end
end