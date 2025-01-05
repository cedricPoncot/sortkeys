# Sortkeys

**Recursively sorts the keys of a map.**

iex> Sortkeys.sort(%{b: 0, a: %{b: %{b: 0, a: 0}, a: 1}, c: 0})
%{a: %{a: 1, b: %{a: 0, b: 0}}, b: 0, c: 0}

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `sortkeys` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:sortkeys, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/sortkeys>.

