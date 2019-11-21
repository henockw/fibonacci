# For recursive
def recursive_fib(x)
  return x if x <= 1 
  recursive_fib(x-1 ) + recursive_fib(x-2 )
end

# For iterative
def iterative_fib(num)
  terms = [0,1]
  i = 2
  while i<=num
    terms.append(terms[i-1] + terms[i-2])
    i = i + 1
  end
  return terms [num]
end

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end