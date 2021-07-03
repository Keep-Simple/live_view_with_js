defmodule LiveViewWithJs.Repo do
  use Ecto.Repo,
    otp_app: :live_view_with_js,
    adapter: Ecto.Adapters.Postgres
end
