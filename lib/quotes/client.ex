defmodule Quotes.Client do

  @doc"""
  Extract the profile data for the provided token
  """
  def today(category \\ nil) do
    "/qod"
    |> Quotes.Api.get(%{category: category})
    |> (fn
          {200, %{contents: %{quotes: [%{quote: saying} | _]}}} -> saying
        end).()
  end

  def categories do
    "/qod/categories"
    |> Quotes.Api.get
    |> (fn {200, %{contents: %{categories: categories}}} -> categories end).()
    |> Enum.map(fn {cat, _desc} -> cat end)
  end

end


