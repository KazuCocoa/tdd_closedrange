defmodule TddClosedrange do

  @type t :: tuple

  @type upper :: integer
  @type lower :: integer

  @spec range(lower, upper) :: {lower, upper}
  def range(lower, upper) when lower > upper, do: raise(ArgumentError, "1st argument should lower than 2nd argument")
  def range(lower, upper),                    do: {lower, upper}

  @spec lower(TddClosedrange.t) :: lower
  def lower({lower, _upper}), do: lower

  @spec upper(TddClosedrange.t) :: upper
  def upper({_lower, upper}), do: upper

  @spec to_string(TddClosedrange.t) :: String.t
  def to_string({lower, upper}), do: "[#{lower},#{upper}]"

  @spec contain(TddClosedrange.t, integer) :: boolean
  def contain({lower, _upper}, value) when value < lower, do: false
  def contain({_lower, upper}, value) when value > upper, do: false
  def contain(_range, _value),                            do: true
end
