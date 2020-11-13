# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :tailwind_setup,
  ecto_repos: [TailwindSetup.Repo]

# Configures the endpoint
config :tailwind_setup, TailwindSetupWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "91NIRM60UXb2dOS0m0jyEJS1LWFF6p+NMZyG5idBHoqqDb63c/ZwIVOPnesGWpJf",
  render_errors: [view: TailwindSetupWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: TailwindSetup.PubSub,
  live_view: [signing_salt: "l/aLTuFv"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
