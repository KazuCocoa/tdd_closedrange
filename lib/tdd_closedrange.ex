defmodule TddClosedrange do

  @type t :: tuple

  @type upper :: integer
  @type lower :: integer

  @spec range(upper, lower) :: {upper, lower}
  def range(lower, upper), do: {lower, upper}

  @spec lower(TddClosedrange.t) :: lower
  def lower({lower, _}), do: lower

  @spec upper(TddClosedrange.t) :: upper
  def upper({_, upper}), do: upper

  @spec to_string(TddClosedrange.t) :: String.t
  def to_string({lower, upper}), do: "[#{lower},#{upper}]"

end
