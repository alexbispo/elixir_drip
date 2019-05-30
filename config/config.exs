# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :elixir_drip_web,
  ecto_repos: [ElixirDripWeb.Repo],
  generators: [context_app: false]

# Configures the endpoint
config :elixir_drip_web, ElixirDripWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "jKUebVkpXkYFztHhbC5kT4Yxy8YwGmcXbnQ0N7I6c0erA9gEHIUe/5Osb1FtbOqs",
  render_errors: [view: ElixirDripWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ElixirDripWeb.PubSub, adapter: Phoenix.PubSub.PG2]

# Configure Mix tasks and generators
config :elixir_drip,
  ecto_repos: [ElixirDrip.Repo]

# By default, the umbrella project as well as each child
# application will require this configuration file, ensuring
# they all use the same configuration. While one could
# configure all applications here, we prefer to delegate
# back to each application for organization purposes.
import_config "../apps/*/config/config.exs"

# Sample configuration (overrides the imported configuration above):
#
#     config :logger, :console,
#       level: :info,
#       format: "$date $time [$level] $metadata$message\n",
#       metadata: [:user_id]
