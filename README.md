# Sort the keys of a map recursively. 

Useful to get a deterministically ordered map, as the order of keys can vary between engines.


## Installation

```elixir
def deps do
  [
    {:sortkeys, "~> 0.1.0"}
  ]
end
```

## Usage

```elixir
unsorted_map = %{
                  b: 0, 
                  a: %{
                    b: %{
                      b: 0, 
                      a: 0
                    }, 
                    a: 1
                  }, 
                  c: 0
                }

Sortkeys.sort(unsorted_map)

%{
  a: %{
    a: 1, 
    b: %{
      a: 0, 
      b: 0
    }
  }, 
  b: 0, 
  c: 0
}
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/sortkeys>.

