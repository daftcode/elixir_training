defmodule Exercises.StringsTest do
  use ExUnit.Case
  alias Exercises.Strings

  test "get size" do
    assert Strings.size("DaftElixir") == 10
  end

  test "get length" do
    assert Strings.length("DąftĘlixir") == 10
  end

  test "concat merging strings into one" do
    assert Strings.concat("Daft", "Up") == "DaftUp"
  end
end
