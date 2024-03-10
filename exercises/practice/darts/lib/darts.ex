defmodule Darts do
  @type position :: {number, number}

  @doc """
  Calculate the score of a single dart hitting a target
  """
  @spec score(position) :: integer
  def score({x, y}) do
    distance = x*x + y*y
    cond do
      distance <= 1 -> 10
      distance <=  25 -> 5
      distance <= 100 -> 1
      true -> 0
    end
  end
end
