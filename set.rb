def set_make(array)
  set = {}
  array.each do |x|
    set[x] = true
  end
  set
end

def contains?(set, x)
  set.has_key?(x)
end

def each_element(set, &block)
  set.keys.each(&block)
end

def all?(set)
  each_element(set) do |x|
    return false unless yield(x)
  end
  true
end

def subset?(a, b)
  all?(a) do |x|
    contains?(b, x)
  end
end

def union(a, b)
  array = []

  each_element(a) do |x|
    array << x
  end

  each_element(b) do |x|
    array << x
  end

  make_set(array)
end

def intersection(a, b)
  array = []

  each_element(a) do |x|
    array << x if contains?(b, x)
  end

  make_set(array)
end
