defmodule Exercises.ListsTest do
  use ExUnit.Case
  alias Exercises.Lists


  test "get bigger list" do
    list1 = [:small, :list]
    list2 = [:big, :really, :big, :tuple]
    assert Lists.bigger_list(list1, list2) == list2
  end

  test "gets last element from list" do
    list = [1, 2, 3, 4, 5, :last]
    assert Lists.last_element(list) == :last
  end

  test "add element at start and end" do
    tup = {1,2,3}
    assert Lists.add_element_at_start_and_end(tup, :elem) == {:elem, 1, 2, 3, :elem} 
  end

end
