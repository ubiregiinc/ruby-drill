def length(string)
  count = 0
  string.each_char do
    count += 1
  end
  count
end

def byte_length(string)
  count = 0
  string.each_byte do
    count += 1
  end
  count
end
