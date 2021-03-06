defmodule N26.Categories do
  @moduledoc """
  Category related endpoints.
  """

  import N26.API

  def categories(token), do: get(token, "smrt/categories")
  def category_statistics(t, from, to), do: get(t, "smrt/statistics/categories/#{from}/#{to}")
end
