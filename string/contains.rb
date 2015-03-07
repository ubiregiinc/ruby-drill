def contains?(string, pattern)
  string.length.times do |i|
    match = true
    pattern.length.times do |j|
      unless string[i + j] == pattern[j]
        match = false
        break
      end
    end
    return true if match
  end

  false
end
