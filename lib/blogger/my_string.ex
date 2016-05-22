defmodule MyString do
  def truncate(nil, _), do: nil
  def truncate(string, length) when length < 0, do: string

  def truncate(str, length) do
    String.slice(str, 0..length-1) <> "..."
  end
end
