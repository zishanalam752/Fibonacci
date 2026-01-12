# Problem Statement
The goal is to implement a TypeScript function to generate the Fibonacci series. The solution must ensure proper typing, handle edge cases (like n=0 or n=1), and maintain code readability.

# Solution Overview
I implemented an **iterative solution** to generate the Fibonacci series.

- **Function**: `fibonacciSeries(n: number): number[]`
- **Logic**: 
  - Returns an empty array for `n <= 0`.
  - Returns `[0]` for `n = 1`.
  - Iteratively calculates the next number by summing the previous two, starting with `[0, 1]`.
- **Typing**: Explicitly defined inputs and outputs as `number` and `number[]`.

# Testing Done
Tested the function manually with various inputs:
- `n = 0` -> `0`
- `n = 1` -> `1`
- `n = 5` -> `5`
- `n = 10` -> `55`.

# Checklist
-  Linting passed
- Tests passed
- Code reviewed
