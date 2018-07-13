defmodule N26.Transactions do
  import N26.API

  def transactions(token), do: get(token, "smrt/transactions")
  def transaction(token, transactionId), do: get(token, "smrt/transactions/#{transactionId}")
  def metadata(token, transactionId), do: get(token, "transactions/#{transactionId}/metadata")
  def csv(token, from, to), do: get(token, "smrt/reports/#{from}/#{to}/statements")
  def standing_orders(token), do: get(token, "transactions/so")
  def statements(token), do: get(token, "statements")
  def statement(token, statementId), do: get(token, "statements/#{statementId}")
end
