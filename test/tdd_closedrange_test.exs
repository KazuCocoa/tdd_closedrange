defmodule TddClosedrangeTest do
  use ExUnit.Case

  alias TddClosedrange, as: TC

  test "get lower bound" do
    lower_bound = TC.range(1, 3) |> TC.lower
    assert lower_bound == 1
  end

  test "get upper bound" do
    upper_bound = TC.range(1, 3) |> TC.upper
    assert upper_bound == 3
  end

  test "get upper string" do
    string = TC.range(3, 8) |> TC.to_string
    assert string == "[3,8]"
  end


  test "raise argument error" do
    assert_raise(ArgumentError,
      "1st argument should lower than 2nd argument",
      fn ->
        TC.range(12, 5)
      end)
  end

  describe("#contain some value in the range") do
    test "scceed" do
      assert TC.range(3, 8) |> TC.contain(5) == true
    end

    test "failed because out of range too lower" do
      assert TC.range(3, 8) |> TC.contain(-1) == false
    end
  end
end
