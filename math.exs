defmodule Math do
    @moduledoc """
    Provides math-related functions.

    ## Examples

        iex> Math.sum(1, 2)
        3

    """

    @doc """
    Calculates the sum of two numbers.
    """
    def sum(a, b) do
        do_sum(a, b)
    end
    defp do_sum(a, b) do
        a + b
    end

    def zero?(0) do
        true
    end
    def zero?(x) when is_integer(x) do
        false
    end

    def sum_list([head | tail], acc) do
        sum_list(tail, head + acc)
    end
    def sum_list([], acc) do
        acc
    end

    def double_each([head | tail]) do
        [head * 2 | double_each(tail)]
    end
    def double_each([]) do
        []
    end
end

# IO.puts Math.sum(1, 2)
# IO.puts Math.do_sum(1, 2)

# IO.puts Math.zero?(0)
# IO.puts Math.zero?(1)
# IO.puts Math.zero?(0.0)
# IO.puts Math.zero?([1,2,3])

# IO.puts Math.sum_list([1,2,3], 0)