def make_array(size, value)
  array = []

  size.times do
    array << value
  end

  array
end

def make_array2(size)
  array = []

  size.times do |i|
    array << yield(i)
  end

  array
end

def make_matrix(i, j, value)
  rows = []

  i.times do
    cols = []

    j.times do
      cols << value
    end

    rows << cols
  end

  rows
end
