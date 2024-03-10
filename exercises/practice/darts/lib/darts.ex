defmodule Darts do
  @type position :: {number, number}

  @doc """
  Calculate the score of a single dart hitting a target
  """
  @spec score(position) :: integer
  def score({x, y}) do
    distance = x*x + y*y
    cond do
      distance > 100 ->  0
      distance <= 100 and distance > 25 -> 1
      distance <= 25 and distance > 1 -> 5
      distance <= 1 -> 10
    end
  end
end
