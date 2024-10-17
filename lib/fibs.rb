def fibs(n)
  fibonacci = []
  if n <= 0
  elsif n == 1
    fibonacci.push 0
  else
    fibonacci.push 0
    fibonacci.push 1

    a = 0 # fib(n-2)
    b = 1 # fib(n-1)

    (n - 2).times do
      fibonacci.push(fibonacci[a] + fibonacci[b])
      a += 1
      b += 1
    end
  end
  fibonacci
end

def fibs_rec(n)
  puts 'this was printed recursively'
  fibonacci = []
  if n <= 0
    []
  elsif n == 1
    [0]
  elsif n == 2
    [0, 1]
  else
    fibonacci = fibs_rec(n - 1)
    fibonacci.push(fibonacci[-1] + fibonacci[-2])
  end
end
