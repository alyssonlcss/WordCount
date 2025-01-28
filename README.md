Aqui está um **README.md** atualizado e mais detalhado para o seu projeto **WordCounter**:  

---

# **WordCounter** 📝  
Um simples contador de palavras em arquivos de texto, desenvolvido em **Elixir**. Ele analisa um arquivo `.txt`, conta a frequência das palavras e salva o resultado em um arquivo JSON.  

## **Instalação** 🚀  
Certifique-se de que você tem **Elixir** instalado. Para instalar as dependências, execute:  

```sh
mix deps.get
```

---

## **Como Usar** ⚡  

### **1. Executar Diretamente**  
Para rodar o script e gerar o JSON com a contagem de palavras, use:  

```sh
mix run run.exs
```

### **2. Executar no IEx**  
Se quiser testar interativamente:  

```sh
iex -S mix
```

E dentro do IEx:  

```elixir
WordCounter.count_words("sample.txt") |> IO.inspect()
WordCounter.save_to_json(WordCounter.count_words("sample.txt"), "word_counts.json")
```

---

## **Exemplo de Uso** 📖  

### **Entrada (`sample.txt`)**  

```txt
Oi, teste teste funcional. Ok, Gil.
```

### **Saída (`word_counts.json`)**  

```json
{
  "teste": 2,
  "oi": 1,
  "funcional": 1,
  "ok": 1,
  "gil": 1
}
```

---

## **Dependências** 📦  
O projeto usa **Jason** para manipulação de JSON. Se ainda não estiver instalado, rode:

```sh
mix deps.get
```

---

## **Estrutura do Projeto** 📂  

```
word_counter/
│── lib/
│   ├── word_counter.ex  # Módulo principal
│── test/
│── mix.exs              # Configurações do Mix
│── run.exs              # Script de execução
│── sample.txt           # Arquivo de exemplo
│── README.md            # Este arquivo
```

---

## **Autor** 👨‍💻  
Desenvolvido por **Alisson Lucas**.  

---

Agora o README está bem mais explicativo! Se precisar de mais ajustes ou quiser adicionar mais informações, só avisar. 🚀