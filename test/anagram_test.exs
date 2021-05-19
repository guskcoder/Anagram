defmodule AnagramTest do
  use ExUnit.Case
  alias Anagram

  test "`Sol`" do
    assert Anagram.compare("Sol", "Los") == true
  end

  test "`Voa`" do
    assert Anagram.compare("Voa", "Voal") == false
    assert Anagram.compare("Voa", "Ova") == true
  end

  test "`mamae`" do
    assert Anagram.compare("Mamae", "Mamea") == true
    assert Anagram.compare("Mamae", "aaxmn") == false
  end
end
