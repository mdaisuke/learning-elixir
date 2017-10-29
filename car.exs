defmodule Car do
  @enforce_keys [:name]
  defstruct [:name, :age]
end
