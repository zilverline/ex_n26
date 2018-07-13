defmodule N26.API do
  @moduledoc """
  API helper functions.
  """

  def get(token, path) do
    "https://api.tech26.de/api/#{path}"
    |> HTTPoison.get(Authorization: "Bearer #{token}")
    |> N26.API.parse_response()
  end

  def parse_response({:ok, response}), do: response.body |> Poison.decode!()
end
