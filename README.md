# N26

N26 API client for Elixir.

Based on the unofficial API documentation courtesy of [Rots/n26-api](https://github.com/Rots/n26-api)

## Installation

The package can be installed by adding `n26` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:n26, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/n26](https://hexdocs.pm/n26).

## Usage

```elixir
iex(1)> token = N26.Auth.get_token("info@example.com", "password")
"fed3b6e1-33e8-48d0-0c0a-79850e380fake"

iex(2)> token |> N26.Account.me
%{
  "birthDate" => 563932100000,
  "email" => "info@example.com",
  "firstName" => "John",
  "gender" => "MALE",
  "id" => "abc123",
  "lastName" => "Doe",
  "mobilePhoneNumber" => "+31611111111",
  "nationality" => "NLD",
  "shadowUserId" => "abc123",
  "signupCompleted" => false,
  "title" => "",
  "transferWiseTermsAccepted" => false
}
```
