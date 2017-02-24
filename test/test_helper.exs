ExUnit.start

Mix.Task.run "ecto.create", ~w(-r GuessingGame.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r GuessingGame.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(GuessingGame.Repo)

