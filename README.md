# Elixir Enum.reduce: Handling Empty Lists

This example demonstrates a common error encountered when using `Enum.reduce` in Elixir: a `FunctionClauseError` when the input list is empty.  The provided code attempts to sum elements greater than 3, but fails when the list is empty because the anonymous function expects two arguments which are not supplied. The solution provides a robust approach that handles both empty and non-empty lists gracefully.

## Bug
The original code throws a `FunctionClauseError` if the input list is empty because the `Enum.reduce` function won't call the anonymous function when there are no elements. 

## Solution
The solution addresses this issue by providing a default value for the accumulator and handling the case when the list is empty.