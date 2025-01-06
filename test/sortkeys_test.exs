defmodule SortkeysTest do
  use ExUnit.Case
  doctest Sortkeys

  test "one layer sort" do
    data = %{a: 0, c: 0, b: 0}
    schema = %{a: 0, b: 0, c: 0}

    assert Sortkeys.sort(data) == schema
  end

  test "recursive sort" do
    data = %{
      b: 0,
      a: %{b: %{b: 0, a: 0}, a: 1},
      c: 0
    }
    schema = %{
      a: %{a: 1, b: %{a: 0, b: 0}},
      b: 0,
      c: 0
    }
  end
end
