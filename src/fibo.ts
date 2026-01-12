function fibonacciSeries(n: number): number[] {
  if (n <= 0) return [0];
  if (n === 1) return [0, 1];

  const fib: number[] = [0, 1];

  for (let i = 2; i <= n; i++) {
    const prev1 = fib[i - 1]!;
    const prev2 = fib[i - 2]!;
    fib.push(prev1 + prev2);
  }

  return fib;
}

const num: number = Number(process.argv[2]);

if (isNaN(num) || num < 0) {
  console.log("Please enter a valid number");
} else {
  const fib = fibonacciSeries(num);
  console.log(fib[num]);
}


// Output 

// num = 0 → 0

// num = 1 → 1

// num = 10 → 55