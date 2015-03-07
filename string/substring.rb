def substring(string, start, length)
  result = ""

  length.times do |i|
    result << string[start + i]
  end

  result
end
