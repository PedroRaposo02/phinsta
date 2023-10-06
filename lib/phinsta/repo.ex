defmodule Phinsta.Repo do
  use Ecto.Repo,
    otp_app: :phinsta,
    adapter: Ecto.Adapters.Postgres
end
