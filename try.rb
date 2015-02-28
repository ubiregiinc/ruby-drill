# Example
# 
#   try(1, :to_s)     # => "1"
#   try(1, :+, 3)     # => 4
#   try(nil, :+, 3)   # => nil
#
# Keywords
#
# * if
# * Object#send
# * Splat args
#
def try(x, sym, *args)
  if x
    x.send(sym, *args)
  end
end
