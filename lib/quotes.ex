defmodule Quotes do
  @moduledoc"""
  A client library for interacting with the Quotes API.
  """
  defdelegate today(category \\ nil), to: Quotes.Client
  defdelegate categories(), to: Quotes.Client

end
