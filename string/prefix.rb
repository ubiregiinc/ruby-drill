#
#
# prefix?("quick", "quick brown fox jumps over lazy dog") => true
# prefix?("", "Lorem ipsum dolor sit amet")               => true
# prefix?("Ruby", "Rails Girls - Get started with tech")  => false
# prefix?("quick brown fox jumps over lazy dog", "quick") => false
#
def prefix?(x, y)
  x.each_char.with_index do |char, index|
    return false unless char == y[index]
  end

  true
end

#
#
def suffix?(x, y)
  x.each_char.with_index do |char, index|
    return false unless char == y[y.size - x.size + index]
  end
  
  true
end
