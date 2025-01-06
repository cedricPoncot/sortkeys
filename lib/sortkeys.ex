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
      case value do
        v when is_map(v) -> {key, sort(v)}
        v when is_list(v) -> {key, Enum.map(v, &sort_list_item/1)}
        _ -> {key, value}
      end
    end)
    |> Enum.sort_by(fn {key, _value} -> key end)
    |> Enum.into(%{})
  end

  defp sort_list_item(item) when is_map(item), do: sort(item)
  defp sort_list_item(item), do: item
end
