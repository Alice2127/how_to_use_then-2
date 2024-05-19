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
  # then句無しではパイプ演算子の左側の要素を第二引数には渡せないためこの関数は実行するとエラーになる
  def make_another_file do
    body = "Oh No, World!"
    body |> File.write("fuga.txt", body)
    File.read("fuga.txt")
  end

  def make_a_file_using_then do
  # then句を使用してパイプ演算子の左側の要素を第二引数に渡せた
    body = "Hi, World!"
    body |> then(fn x -> File.write("piyo.txt", x) end)
    File.read("piyo.txt")
  end
end
