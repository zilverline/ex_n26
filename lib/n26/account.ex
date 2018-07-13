defmodule N26.Account do
  @moduledoc """
  Account related endpoints.
  """

  import N26.API

  def me(token), do: get(token, "me")
  def status(token), do: get(token, "me/statuses")
  def account(token), do: get(token, "accounts")
  def stats(token), do: get(token, "accounts/stats")
  def addresses(token), do: get(token, "addresses")
  def cards(token), do: get(token, "v2/cards")
  def card(token, cardId), do: get(token, "cards/#{cardId}")
  def limits(token), do: get(token, "settings/account/limits")
  def limits(token, cardId), do: get(token, "settings/limits/#{cardId}")
  def contacts(token), do: get(token, "smrt/contacts")
  def check(token), do: get(token, "barzahlen/check")
end
