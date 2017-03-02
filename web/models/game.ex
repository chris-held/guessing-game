defmodule GuessingGame.Game do
  use GuessingGame.Web, :model
  @derive {Poison.Encoder, only: [:id, :difficulty, :guesses_left, :the_number, :won]}
  schema "games" do
    field :difficulty, :string
    field :guesses_left, :integer
    field :the_number, :integer
    field :won, :boolean, default: false

    timestamps
  end

  @required_fields ~w(difficulty guesses_left the_number won)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
