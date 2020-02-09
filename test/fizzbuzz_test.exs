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

  test "Should return fizz if divisable by 3" do
    execute_main = fn ->
      Fizzbuzz.play(1, 3)
    end

    assert capture_io(execute_main) =~ "1\n2\nFizz"
  end

  test "Should return buzz if divisable by 5" do
    execute_main = fn ->
      Fizzbuzz.play(1, 5)
    end

    assert capture_io(execute_main) =~ "1\n2\nFizz\n4\nBuzz"
  end

  test "Should return FizzBuzz if divisable by 5 and 3" do
    execute_main = fn ->
      Fizzbuzz.play(14, 15)
    end

    assert capture_io(execute_main) =~ "14\nFizzBuzz"
  end
end
