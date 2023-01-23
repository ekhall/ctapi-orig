defmodule Ctapi.Repo do
  use Ecto.Repo,
    otp_app: :ctapi,
    adapter: Ecto.Adapters.Postgres
end
