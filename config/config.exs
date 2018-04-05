# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :elixir_vue_todo,
  ecto_repos: [ElixirVueTodo.Repo]

# Configures the endpoint
config :elixir_vue_todo, ElixirVueTodoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "4nGll/kgqKLrcy9f0hocqWEelGsGh2bbyp1SdTek5YBp0jzTwYVhyb85qw0/Rhw/",
  render_errors: [view: ElixirVueTodoWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ElixirVueTodo.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
