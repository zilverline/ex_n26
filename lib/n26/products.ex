defmodule N26.Products do
  import N26.API

  def products(token), do: get(token, "products")
end
