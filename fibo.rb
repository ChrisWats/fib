def self.recursive_fib(fullTime, fib0=0, fib1=1, time=0, final=0)
  # Solves the fibonacci with recursion.
  finalfib = fib0
  fibo = fib1
  fibn = fib0 + fib1

  if time == fullTime
    return final
  else
    time += 1
    recursive_fib(fullTime, fibo, fibn, time, finalfib)
  end
end

def self.iterative_fib(time)
  # Solves the fibonacci with iteration.
  fib0 = 0
  fib1 = 1
  time -= 1

  time.times do
    fibn = fib0 + fib1
    fib0 = fib1
    fib1 = fibn
  end
  return fib0
end

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib") { iterative_fib(num) }
end

puts "recursive_fib 35th is #{recursive_fib(35)}"
puts "iterative_fib 35th is #{iterative_fib(35)}"