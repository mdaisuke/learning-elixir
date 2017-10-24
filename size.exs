defprotocol Size do
    @doc "Calculates the size (and not the length!) of a data structure"
    def size(data)
end

defimpl Size, for: BitString do
    def size(string), do: byte_size(string)
end

defimpl Size, for: Map do
    def size(string), do: map_size(string)
end

defimpl Size, for: Tuple do
    def size(string), do: tuple_size(string)
end