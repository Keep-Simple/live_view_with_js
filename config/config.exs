# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :live_view_with_js,
  ecto_repos: [LiveViewWithJs.Repo]

# Configures the endpoint
config :live_view_with_js, LiveViewWithJsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "SVxW+4YPKoWVNOUIIbZGI2PvX98MlwsGGLvJhWPorQLO6DkWykLF+eoMQmFopszx",
  render_errors: [view: LiveViewWithJsWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: LiveViewWithJs.PubSub,
  live_view: [signing_salt: "NT9mioWH"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
