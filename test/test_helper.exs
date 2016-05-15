ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Blogger.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Blogger.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Blogger.Repo)

