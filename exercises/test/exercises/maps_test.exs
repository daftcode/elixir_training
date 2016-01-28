defmodule Exercises.MapsTest do
  use ExUnit.Case
  alias Exercises.Maps

  test "merge 2 maps and sum their values" do
    map1 = %{ a: 1, b: 5 }
    map2 = %{ a: 15, b: 4 }
    assert Maps.merge_maps_and_sum(map1, map2) == %{ a: 16, b: 9 }
  end

  test "returns map with doubled value of key in second param" do
    map = %{ a: 5, b: 7 }
    assert Maps.double_values(map, :a) == %{ a: 10, b: 7 }
  end

end
