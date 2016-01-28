defmodule Exercises.TuplesTest do
  use ExUnit.Case
  alias Exercises.Tuples

  test "get bigger tupple" do
    tuple1 = {:small, :tupple}
    tuple2 = {:big, :really, :big, :tuple}
    assert Tuples.bigger_tuple(tuple1, tuple2) == tuple2
  end

  test "gets last element from tupple" do
    tuple = {1, 2, 3, 4, 5, :last}
    assert Tuples.last_element(tuple) == :last
  end

  test "add element at start and end" do
    tup = {1,2,3}
    assert Tuples.add_element_at_start_and_end(tup, :elem) == {:elem, 1, 2, 3, :elem} 
  end

end
