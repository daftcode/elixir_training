defmodule Exercises.EnumsTest do
  use ExUnit.Case
  alias Exercises.Enums

  test "remove smallest" do
    list = [15, 125, 343, -5, -12, 29]
    assert Enums.remove_smallest(list) == list --[-12]
  end

  test "return map with doubled values" do
    map = %{ a: 15, b: 2, c: 23 }
    assert Enums.doubled_values_map(map) == %{ a: 30, b: 4, c: 46 }
  end

  test "diff from average" do
    list = [55, 95, 62, 36, 48]
    assert Enums.diff_from_average(list) == [4.2, -35.8, -2.8, 23.2, 11.2]
  end

end
