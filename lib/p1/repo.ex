defmodule P1.Repo do
  use Ecto.Repo,
    otp_app: :p1,
    adapter: Ecto.Adapters.Postgres
end
