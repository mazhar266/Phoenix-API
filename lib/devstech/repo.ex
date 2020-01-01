defmodule Devstech.Repo do
  use Ecto.Repo,
    otp_app: :devstech,
    adapter: Ecto.Adapters.Postgres
end
