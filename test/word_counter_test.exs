defmodule WordCounterTest do
  use ExUnit.Case
  alias WordCounter

  test "conta palavras corretamente" do
    sample_text = "Teste de palavras repetidas, sim isso mesmo palavras repetidas"
    expected_result = %{"palavras" => 2, "repetidas" => 2, "incrível" => 1, "funcional" => 1}

    File.write!("test_sample.txt", sample_text)
    assert WordCounter.count_words("test_sample.txt") == expected_result
  end
end
