defmodule GuessingGame.API.GamesController do
  use GuessingGame.Web, :controller
  import GuessingGame.GameService
  import GuessingGame.HintService
  alias GuessingGame.Game
  require Integer

  def show(conn, %{"id" => id}) do
    _game = Repo.get!(Game, id)
    game = %{
      id: _game.id,
      difficulty: _game.difficulty,
      guesses_left: _game.guesses_left,
      won: _game.won
    }
    if _game.won || _game.guesses_left == 0 do
      Map.put(game, 'the_number', _game.the_number)
    end
    json conn, game
  end

  def create(conn, %{"difficulty" => difficulty}) do
    guesses = String.to_atom(difficulty)
    |> get_valid_difficulty
    |> get_guesses_for_difficulty
    the_difficulty = String.to_atom(difficulty)
    |> get_valid_difficulty
    |> Atom.to_string
    game = %{
      difficulty: the_difficulty,
      guesses_left: guesses,
      the_number: get_number()
    }
    changeset = Game.changeset(%Game{}, game)

    case Repo.insert(changeset) do
      {:ok, _game} ->
        json conn, %{id: _game.id, guesses_left: _game.guesses_left}
      {:error, changeset} ->
        json conn, changeset
    end
    
  end

  def update(conn, %{"id" => id, "guess" => guess}) do
    game = Repo.get!(Game, id)

    # TODO - don't allow guesses for completed games
    if game.won || game.guesses_left == 0 do
      json conn, %{result: "This game has been completed."}
    end

    game_changeset = get_update_changeset(game, guess == game.the_number)

    changeset = Game.changeset(game, game_changeset)

    case Repo.update(changeset) do
      {:ok, game} ->
        hint = nil
        hilow = nil
        if !game.won do
          hint_atom = get_hints()
          |> get_random_hint
          hint = get_hint(guess, hint_atom)
          hilow = get_higher_lower(guess, game.the_number)
        end
        ret = %{
          id: game.id,
          difficulty: game.difficulty,
          guesses_left: game.guesses_left,
          previous_guess: guess,
          won: game.won,
          results: hilow,
          hint: hint
        }
        json conn, ret
      {:error, changeset} ->
        json conn, changeset
    end 
    
    # # call get_higher_lower and put the result in results
    # # get a random hint and add that as a hint
    # hint_atom = get_hints
    # |> get_random_hint
    # ret = %{
    #   id: game.id,
    #   difficulty: game.difficulty,
    #   guesses_left: game.guesses_left,
    #   previous_guess: guess,
    #   won: false,
    #   results: get_higher_lower(guess, 1),
    #   hint: get_hint(guess, hint_atom)
    # }
    # json conn, ret
  end
end