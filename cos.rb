def fact(n)
  if n == 0
    1
  else
    n * fact(n-1)
  end
end

def cos(array, x)
  result = 1

  10.times do |i|
    sign = (-1) ** (i+1)

    n = 2*i
    result += sign * (x ** n) / fact(n)

    array << result
  end
end

1000.times do |i|
  x = i/100.0

  a = [x, Math.cos(x)]

  cos(a, x)

  puts a.join(",")
end
