# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :rtf_editor, RtfEditorWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "UY63YltfTuKEcqtaVFIoFzXSFmJRoYTKvzxqy67kfGiBSEo8ugig8qd/pLJHWb2h",
  render_errors: [view: RtfEditorWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: RtfEditor.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "osfjop/b"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"