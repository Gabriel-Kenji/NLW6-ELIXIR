defmodule Wabanex.IMC do
  def calculate(%{"filename" => filename})do
    filename
    |> File.read()
    |> handle_file()
  end

  defp handle_file({:ok, content}) do
    data =
      content
      |> String.split("\n")
      |> Enum.map(fn line -> parse_line(line) end)
      |> Enum.into(%{})
    {:ok, data}
  end

  defp handle_file({:error, _reason}) do
    {:erro, "Error while opening the file"}
  end

  defp parse_line(line) do
    line
    |> String.split(",")
    |> List.update_at(1, &String.to_float/1)
    |> List.update_at(2, &String.to_float/1)
    |> calculate_imc()
  end

  defp calculate_imc([name, height, wight]), do: {name, wight/(height * height)}
end
