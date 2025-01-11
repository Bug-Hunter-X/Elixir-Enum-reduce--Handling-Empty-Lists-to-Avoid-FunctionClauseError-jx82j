```elixir
list = [1, 2, 3, 4, 5]

Enum.reduce(list, 0, fn x, acc ->
  if x > 3 do
    acc + x
  else
    acc
  end
end)
```
This code intends to sum only elements greater than 3.  However, if the list is empty, it will produce a `FunctionClauseError` because the anonymous function expects two arguments (x and acc), but `Enum.reduce` will not call the function if the list is empty, resulting in no arguments passed. 