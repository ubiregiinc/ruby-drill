def select_even_numbers1(array)
  result = []

  array.each do |n|
    if n.even?
      result << n
    end
  end

  result
end

def select_long_strings1(strings, n)
  result = []

  strings.each do |s|
    if s.length > n
      result << s
    end
  end

  result
end

def grep1(strings, regexp)
  result = []

  strings.each do |s|
    if regexp =~ s
      result << s
    end
  end

  result
end


def select_even_numbers2(array)
  array.select {|n|
    n.even?
  }
end

def select_long_strings2(strings, n)
  strings.select {|s| s.length > n }
end

def grep2(strings, regexp)
  strings.select {|s| regexp =~ s }
end


def select_even_numbers3(array)
  array.select(&:even?)
end


def size_of_strings1(strings)
  result = []

  strings.each do |s|
    result << s.size
  end

  result
end

def upcased_strings1(strings)
  result = []

  strings.each do |s|
    result << s.upcase
  end

  result
end

def lookup_mail_addresses1(table, logins)
  mail_addresses = []

  logins.each do |login|
    mail_addresses << table[login]
  end

  mail_addresses
end

def fizz_buzz1(seq)
  result = []

  seq.each do |n|
    if n % 3 == 0 && n % 5==0
      result << "Fizz Buzz"
    elsif n % 3 == 0
      result << "Fizz"
    elsif n % 5 == 0
      result << "Buzz"
    else
      result << n
    end
  end

  result
end


def size_of_strings2(strings)
  strings.collect {|s| s.size }
end

def upcased_strings2(strings)
  strings.map {|s| s.upcase }
end

def lookup_mail_addresses2(table, logins)
  logins.map {|login| table[login] }
end

def fizz_buzz2(seq)
  seq.map {|n|
    if n % 3 == 0 && n % 5==0
      "Fizz Buzz"
    elsif n % 3 == 0
      "Fizz"
    elsif n % 5 == 0
      "Buzz"
    else
      n
    end
  }
end


def size_of_strings3(strings)
  strings.collect(&:size)
end
