defmodule Monitor do
  use ExFSWatch, dirs: ["../exercises/"]
  use Dye


  def callback(:stop) do
    IO.puts "STOP"
  end

  def callback(file_path, _events) do

    case generate_path(file_path) do
      {:ok, path} ->
        {result, _} = System.cmd("mix", ["test", path, "--seed", "0"], cd: "../exercises/")
        {:ok, file_name} = String.split(file_path, "/") |> Enum.fetch(-1)
        IO.puts "\nEdited file: #{file_name}"
        print_result(result)
      {:false, _} ->
        "NoIdeaWhatToDoHere"
    end
  end

  #PRIVATE

  defp print_result(result) do
    if String.contains?(result, "failed") do
      needed_values? = &(String.starts_with?(&1, "lhs") ||
      String.starts_with?(&1, "rhs"))
      lines = String.split(result, "\n")  |> Enum.map(fn(x) -> String.lstrip(x) end)
      asd = Enum.filter(lines, needed_values?) |> Enum.slice(0..1)
      IO.puts ~s"FAILED"ru
      IO.puts ~s"#{Enum.join(asd, "\n")}"r
    else
      IO.puts result
      if String.contains?(result, "stacktrace") || String.contains?(result,
      "error") do
        IO.puts ~s"ERROR"ru
      else
        IO.puts ~s"SUCCESS"g
      end
    end
  end

  defp generate_path(file_path) do
    cond do
      String.ends_with?(file_path, ".ex") ->
        {:ok, String.replace(file_path, "lib", "test") |> String.replace(".ex",
          "_test.exs")}
      String.ends_with?(file_path, "test.exs") ->
        {:ok, file_path}
      true ->
        {:false, ""}
    end
  end

end
