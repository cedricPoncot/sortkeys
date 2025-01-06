defmodule Sortkeys do
  @moduledoc """
  Documentation for `Sortkeys`.
  """

  @doc """

  Recursively sorts the keys of a map.

  ## Exemples

      iex> Sortkeys.sort(%{b: 0, a: %{b: %{b: 0, a: 0}, a: 1}, c: 0})
      %{a: %{a: 1, b: %{a: 0, b: 0}}, b: 0, c: 0}

  """
  @spec sort(map()) :: map()
  def sort(map) when is_map(map) do
    map
    |> Enum.map(fn {key, value} ->
      if is_map(value) do
        {key, sort(value)}
      else
        {key, value}
      end
    end)
    |> Enum.sort_by(fn {key, _value} -> key end)
    |> Enum.into(%{})
  end
end
