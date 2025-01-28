defmodule WordCounter do
  @moduledoc """
  Módulo para contagem de palavras em um arquivo de texto.
  """

  @spec count_words(String.t()) :: map()
  def count_words(file_path) do
    file_path
    |> File.read!()   
    |> String.downcase()  
    |> String.replace(~r/[^\p{L}\s]/u, "") 
    |> String.split(~r/\s+/, trim: true) 
    |> Enum.frequencies() 
    |> Enum.sort_by(fn {_word, count} -> -count end) 
    |> Enum.into(%{}) 
  end

  @spec save_to_json(map(), String.t()) :: :ok
  def save_to_json(word_counts, output_file) when is_map(word_counts) and is_binary(output_file) do
    json_content = Jason.encode!(word_counts, pretty: true) 
    
    unless is_binary(output_file) do
      raise ArgumentError, "O nome do arquivo deve ser uma string, mas recebeu: #{inspect(output_file)}"
    end

    File.write!(output_file, json_content)

    IO.puts("Arquivo JSON gerado: #{output_file}")
    :ok
  end

end
