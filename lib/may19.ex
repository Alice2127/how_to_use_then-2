defmodule May19 do
  @moduledoc """
  Documentation for `May19`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> May19.hello()
      :world

  """
  def make_a_file do
    body = "Hi, World!"
    body |> File.write("hoge.txt")
    File.read("hoge.txt")
  end

  @spec make_another_file() :: none()
  def make_another_file do
    body = "Oh No, World!"
    body |> File.write("fuga.txt", body) #第二引数には渡せない
    File.read("fuga.txt")
  end

  def make_a_file_using_then do
    body = "Hi, World!"
    body |> then(fn x -> File.write("piyo.txt", x) end)
    File.read("piyo.txt")
  end
end
