defmodule N26.Auth do
  @moduledoc """
  N26 API Authentication.
  """

  import N26.API

  def get_token(username, password) do
    HTTPoison.post(
      "https://api.tech26.de/oauth/token",
      {:form,
       [
         grant_type: "password",
         username: username,
         password: password
       ]},
      [{"Authorization", "Basic bXktdHJ1c3RlZC13ZHBDbGllbnQ6c2VjcmV0"}]
    )
    |> parse_response()
    |> Map.get("access_token")
  end
end
