defmodule TddClosedrange do

  @type t :: tuple

  @type upper :: integer
  @type lower :: integer

  @spec range(lower, upper) :: {lower, upper}
  def range(lower, upper) do
    cond do
      lower > upper -> raise(ArgumentError, "1st argument should lower than 2nd argument")
      true -> {lower, upper}
    end
  end

  @spec lower(TddClosedrange.t) :: lower
  def lower({lower, _}), do: lower

  @spec upper(TddClosedrange.t) :: upper
  def upper({_, upper}), do: upper

  @spec to_string(TddClosedrange.t) :: String.t
  def to_string({lower, upper}), do: "[#{lower},#{upper}]"

  @spec contain(TddClosedrange.t, integer) :: boolean
  def contain({lower, upper}, value) do
    cond do
      value < lower -> false
      value > upper -> false
      true -> true
    end
  end

end
