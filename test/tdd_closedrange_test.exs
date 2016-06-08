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
    upper_bound = TC.range(3, 8) |> TC.to_string
    assert upper_bound == "[3,8]"
  end


  test "raise argument error" do
    assert_raise(ArgumentError,
      "1st argument should lower than 2nd argument",
      fn ->
        TC.range(12, 5)
      end)
  end
end
