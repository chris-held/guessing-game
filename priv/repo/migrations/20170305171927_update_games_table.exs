defmodule GuessingGame.Repo.Migrations.UpdateGamesTable do
  use Ecto.Migration

  def change do
    alter table(:games) do
      modify :guesses_left, :integer
      modify :the_number, :integer
    end
  end
end
