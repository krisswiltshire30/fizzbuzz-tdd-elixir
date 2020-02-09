defmodule FizzbuzzTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest Fizzbuzz

  test "Should return unchanges if neither fizz or buzz" do
    execute_main = fn ->
      Fizzbuzz.play(1, 2)
    end

    assert capture_io(execute_main) =~ "1\n2"
  end
end
