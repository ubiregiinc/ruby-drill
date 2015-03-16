# With the help of cond-expressions, we can now define the interest rate function that we mentioned at the beginning of this section. Suppose the bank pays 4% for deposits of up to $1,000 (inclusive), 4.5% for deposits of up to $5,000 (inclusive), and 5% for deposits of more than $5,000. Clearly, the function consumes one number and produces one:

def interest_rate(amount)
  if amount <= 1000
    0.04
  elsif amount <= 5000
    0.045
  else
    0.05
  end
end


# Develop the function interest.
# Like interest-rate, it consumes a deposit amount.
# Instead of the rate, it produces the actual amount of interest that the money earns in a year.
# The bank pays a flat 4% for deposits of up to $1,000, a flat 4.5% per year for deposits of up to $5,000, and a flat 5% for deposits of more than $5,000.

def interest(amount)
  if amount <= 1000
    0.04 * amount
  elsif amount <= 5000
    0.045 * amount
  else
    0.05 * amount
  end
end


# Develop the function tax, which consumes the gross pay and produces the amount of tax owed.
# For a gross pay of $240 or less, the tax is 0%; for over $240 and $480 or less, the tax rate is 15%; and for any pay over $480, the tax rate is 28%.

def tax(amount)
  if amount <= 240
    0
  elsif amount <= 480
    amount * 0.15
  else
    amount * 0.28
  end
end

# a*x^2 + b*x + c = 0

def how_many_solutions?(a, b, c)
  test = b**2 - 4*a*c
  if test > 0
    2
  elsif test == 0
    1
  else
    0
  end
end


def nabeatsu1(n)
  if n % 3 == 0
    :aho
  else
    n
  end
end

def nabeatsu2(n)
  case
  when n % 3 == 0
    :aho
  when /3/ =~ n.to_s
    :aho
  else
    n
  end
end


def ufs_charge(clients, unit_price = 3500)
  if clients <= 5
    unit_price * 5
  else  
    unit_price * clients
  end
end


