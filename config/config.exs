# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :plate,
  ecto_repos: [Plate.Repo]

# Configures the endpoint
config :plate, PlateWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "x6fk5HaWkoxinZ01UD34OTF/19SNQkWt+UbUf26DIB001XqOiVBRzj8HrgqGumfw",
  render_errors: [view: PlateWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Plate.PubSub,
  live_view: [signing_salt: "cvn1Wk4K"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
