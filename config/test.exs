use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :blogger, Blogger.Endpoint,
  http: [port: 4001],
  server: true

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :blogger, Blogger.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "joeletizia",
  database: "blogger_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
