defmodule GuessingGame.Repo.Migrations.CreateGame do
  use Ecto.Migration

  def change do
    create table(:games) do
      add :difficulty, :string
      add :guesses_left, :string
      add :the_number, :string
      add :won, :boolean, default: false

      timestamps
    end

  end
end
