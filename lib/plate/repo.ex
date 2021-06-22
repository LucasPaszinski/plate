defmodule Plate.Repo do
  use Ecto.Repo,
    otp_app: :plate,
    adapter: Ecto.Adapters.Postgres
end
