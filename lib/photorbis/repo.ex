defmodule Photorbis.Repo do
  use Ecto.Repo,
    otp_app: :photorbis,
    adapter: Ecto.Adapters.Postgres
end
