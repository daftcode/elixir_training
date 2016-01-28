defmodule Exercises.Strings do

  def size(str) do
    byte_size(str)
  end

  def length(str) do
    String.length(str)
  end

  def concat(s1, s2) do
    "#{s1}#{s2}"
  end

end
