defmodule MyStringTest do
  use ExUnit.Case, async: true

  test "truncate with negative length" do
    result = MyString.truncate("asdf", -1)
    assert result == "asdf"
  end

  test "truncate with nil string" do
    result = MyString.truncate(nil, 9)
    assert result == nil
  end

  test "truncate with length less than length of string" do
    result = MyString.truncate("asdf", 3)
    assert result == "asd..."
  end
end

