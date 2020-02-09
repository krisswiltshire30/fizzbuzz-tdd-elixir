defmodule Fizzbuzz do
  def play(min, max) do
    Enum.each(min..max, &play/1)
  end

  def play(num) do
    IO.puts(num)
  end
end
