defmodule TailwindSetup.Repo do
  use Ecto.Repo,
    otp_app: :tailwind_setup,
    adapter: Ecto.Adapters.Postgres
end
