# For recursive
def recursive_fib(x)
  return x if x <= 1 
  recursive_fib(x-1 ) + recursive_fib(x-2 )
end

# For iterative
def iterative_fib(num)
  a = 0
  b = 1
  num.times do
    temp = a
    a = b
    b = temp + b
  end
  return a
end

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end