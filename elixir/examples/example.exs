#!/usr/local/bin/elixir-run

fruit = HashDict.new
|> HashDict.put(:apple, 1)
|> HashDict.put(:banana, 3)
|> HashDict.put(:cherry, 10)

IO.inspect fruit
