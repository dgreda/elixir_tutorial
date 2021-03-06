# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :elixir_tutorial,
  ecto_repos: [ElixirTutorial.Repo]

# Configures the endpoint
config :elixir_tutorial, ElixirTutorialWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "l0UEJbSuA1ZAXS5RcUpcWQ0xSCR+JPI/FV1R4niGxmMAhTfAT2BAXsoJdrhIRNMa",
  render_errors: [view: ElixirTutorialWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ElixirTutorial.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
