Code.require_file("lib/word_counter.ex", __DIR__)

file_path = "sample.txt"

word_counts = WordCounter.count_words(file_path)

IO.inspect(word_counts, label: "Contagem de Palavras")

output_file = "word_counts.json"
WordCounter.save_to_json(word_counts, output_file)

IO.puts("Arquivo JSON salvo como: #{output_file}")