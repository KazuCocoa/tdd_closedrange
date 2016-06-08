defmodule TddClosedrangeTest do
  use ExUnit.Case

  alias TddClosedrange, as: TC

  test "get lower bound" do
    upper_bound = TC.range(1, 3) |> TC.lower
    assert upper_bound == 1
  end

  test "get upper bound" do
    upper_bound = TC.range(1, 3) |> TC.upper
    assert upper_bound == 3
  end

  test "get upper string" do
    upper_bound = TC.range(1, 3) |> TC.to_string
    assert upper_bound == "[1,3]"
  end
end
