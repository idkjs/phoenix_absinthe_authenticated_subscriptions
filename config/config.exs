# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration

use Mix.Config

config :phoenix_absinthe_authenticated_subscriptions,
  ecto_repos: [PhoenixAbsintheAuthenticatedSubscriptions.Repo],
  app_domain: "http://localhost:3000",
  cookie_domain: "localhost",
  cookie_secure: false,
  cookie_key: "_phoenix_absinthe_authenticated_subscriptions_key_localhost"

# Configures the endpoint
config :phoenix_absinthe_authenticated_subscriptions, PhoenixAbsintheAuthenticatedSubscriptionsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "vFARunaybVxzlIZHxm2P8m6xmA6IaIeSF1X3ZFNSHPBNXqc2GpiRPcILldr5QSN1",
  render_errors: [view: PhoenixAbsintheAuthenticatedSubscriptionsWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: PhoenixAbsintheAuthenticatedSubscriptions.PubSub, adapter: Phoenix.PubSub.PG2]

# CORS
config :cors_plug,
  origin: "*",
  max_age: 86400,
  methods: ["GET", "POST", "PUT", "DELETE"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
