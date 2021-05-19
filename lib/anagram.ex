defmodule Anagram do
  def compare(string_a, string_b) do
    organize(string_a) == organize(string_b)
  end

  def organize(string) do
    string
    |> String.replace(~r/[^\w]/, "")
    |> String.downcase()
    |> String.graphemes()
    |> Enum.sort()
    |> Enum.join()
  end
end
