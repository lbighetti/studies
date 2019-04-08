defmodule Euler.Problem1Test do
  use ExUnit.Case

  test "test example from description" do
    assert Euler.Problem1.solve(10) == 23
  end

  test "test solution" do
    assert Euler.Problem1.solve(1000) == 233_168
  end
end
