def longest(strings)
  result = nil

  strings.each do |s|
    result = s unless result && result.length <= s.length
  end

  result
end

def shortest(strings)
  result = nil

  strings.each do |s|
    result = s unless result && result.length >= s.length
  end

  result
end
