defmodule Quotes.Application do

  @moduledoc false

  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(Quotes.Worker, []),
    ]

    opts = [
      strategy: :one_for_one,
      name:     Quotes.Supervisor
    ]

    Supervisor.start_link(children, opts)
  end
end
