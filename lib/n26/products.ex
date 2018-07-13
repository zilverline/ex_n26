defmodule N26.Products do
  @moduledoc """
  Product related endpoints.
  """

  import N26.API

  def products(token), do: get(token, "products")
end
