defmodule N26.MixProject do
  use Mix.Project

  def project do
    [
      app: :n26,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "N26",
      source_url: "https://github.com/zilverline/ex_n26",
      description: description(),
      package: package()
    ]
  end

  def application do
    []
  end

  defp deps do
    [{:ex_doc, ">= 0.0.0", only: :dev}, {:httpoison, "~> 1.0"}, {:poison, "~> 3.1"}]
  end

  defp description do
    "N26 API client for Elixir."
  end

  defp package do
    [
      maintainers: ["Stephan van Diepen"],
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/zilverline/ex_n26"}
    ]
  end
end
