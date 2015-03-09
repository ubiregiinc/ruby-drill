# Examples
#
#   abs(3)    # => 3
#   abs(-3)   # => 3
#
# Keywords
#
# * if
#
def abs(x)
  if x < 0
    -x
  else
    x
  end
end

# Examples
#
#   min(1, 3)       # => 1
#   min(3, 1)       # => 1
#
# Keywords
#
# * ternary operator
#
def min(a, b)
  a < b ? a : b
end

# Examples
#
#   max(1, 3)       # => 3
#   max(3, 1)       # => 3
#
# Keywords
#
# * ternary operator
#
def max(a, b)
  a > b ? a : b
end

def area_of_disk(radius)
  Math::PI * radius**2
end

def area_of_ring(outer, inner)
  area_of_disk(outer) - area_of_ring(inner)
end

def sum(array)
  result = 0

  array.each do |x|
    result += x
  end

  result
end

# Define a function to calculate average of numbers in given array
#
# Keywords
#
# * array
#
def average(array)
  total = sum(array)
  total.to_f / array.size
end

# Define a function to calculate variance of numbers in given array
#
# Keywords
#
# * array
#
def variance(array)
  average = average(array)

  result = 0
  array.each do |x|
    result += (average - x)**2
  end
  result
end
