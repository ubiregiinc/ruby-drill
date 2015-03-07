def reverse(string)
  result = ""
  string.length.times do |i|
    result << string[string.length - i - 1]
  end
end
