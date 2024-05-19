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
    body = "Hello, World!"
    File.write("hoge.txt", body)
    File.read("hoge.txt")
  end

  @spec make_another_file() :: none()
  def make_another_file do
    body = "Oh No, World!"
    # 第二引数には渡せない
    body |> File.write("fuga.txt", body)
    File.read("fuga.txt")
  end

  def make_a_file_using_then do
    body = "Hi, World!"
    body |> then(fn x -> File.write("piyo.txt", x) end)
    File.read("piyo.txt")
  end
end
