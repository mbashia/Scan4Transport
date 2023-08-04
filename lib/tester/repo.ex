defmodule Tester.Repo do
  use Ecto.Repo,
    otp_app: :tester,
    adapter: Ecto.Adapters.MyXQL
end
