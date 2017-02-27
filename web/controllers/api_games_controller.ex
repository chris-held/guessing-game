defmodule GuessingGame.API.GamesController do
  use GuessingGame.Web, :controller
  import GuessingGame.GameService
  import GuessingGame.HintService

  def show(conn, %{"id" => id}) do
    game = %{
      id: id,
      difficulty: "easy",
      guesses_left: 5
    }
    json conn, game
  end

  def create(conn, %{"difficulty" => difficulty}) do
    guesses = String.to_atom(difficulty)
    |> get_valid_difficulty
    |> get_guesses_for_difficulty
    game = %{
      id: 1,
      difficulty: get_valid_difficulty(difficulty),
      guesses_left: guesses,
      the_number: get_number()
    }
    json conn, game
  end

  def update(conn, %{"id" => id, "guess" => guess}) do
    hint_atom = get_hints
    |> get_random_hint
    game = %{
      id: String.to_integer(id),
      difficulty: :easy,
      guesses_left: 4,
      previous_guess: guess,
      correct: false,
      results: get_higher_lower(guess, 1),
      hint: get_hint(guess, hint_atom)
    }
    json conn, game
  end
end