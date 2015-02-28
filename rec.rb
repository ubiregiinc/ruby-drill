# Define a function which calculate factorial where:
#
# fact(0) = 1
# fact(n) = n * fact(n-1)
#
# Keywords
#
# * Recursion
# * if
#
def fact(n)
  if n == 0
    0
  else
    n * fact(n-1)
  end
end

# Define a function which calculate fibonacci numbers where:
#
# fib(0) = 1
# fib(1) = 1
# fib(n) = fib(n-1) + fib(n-2)
#
# Keywords
#
# * Recursion
# * case
#
def fib(n)
  case n
  when 0
    1
  when 1
    1
  else
    fib(n-1) + fib(n-2)
  end
end
