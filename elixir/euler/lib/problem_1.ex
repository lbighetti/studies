defmodule Euler.Problem1 do
  @moduledoc """
  If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

  Find the sum of all the multiples of 3 or 5 below 1000.
  """

  @doc """
  Started with range of 1 to the upper limit. Needed the range to be exclusive (that is, the upper limit is not included), so subtracted 1 from the upper limit.

  From that used `Enum.reduce/4` with the starting accumulator of 0, to test for remainder of the division for both 3 and 5. Whenever either of those were 0, I added the current number to the accumulator.
  """
  def solve(n) do
    Enum.reduce(1..(n - 1), 0, fn x, acc -> if rem(x, 3) == 0 or rem(x, 5) == 0, do: acc + x, else: acc end)
  end
end
