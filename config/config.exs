# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :fs_todo,
  ecto_repos: [FsTodo.Repo]

# Configures the endpoint
config :fs_todo, FsTodoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "fXwcDqJ0ELIUZl1jr+hVo64le4hL6UtSvXAI63jtaBQecG3Qh6cMthSAYE8DdjzY",
  render_errors: [view: FsTodoWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: FsTodo.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
