# 配列とブロックを受け取って、配列にブロックを適用した結果を返す。
#
# キーワード
#
# * collect
# * map
#
# 発展的な話題
#
# * SmalltalkとLispの語彙
#
def collect(array)
  result = []

  array.each do |x|
    result << yield(x)
  end

  result
end

# 配列とブロックを受け取って、ブロックを評価した結果がtrueにものだけを含む配列を返す。
#
# キーワード
#
# * select
# * filter
#
# 発展的な話題
#
# * SmalltalkとLispの語彙
#
def select(array)
  result = []

  array.each do |x|
    if yield(x)
      result << x
    end
  end

  result
end

# 配列とブロックを受け取って、ブロックを評価した結果がtrueになるものがある場合にtrueを返す。
#
# キーワード
#
# * any?
#
# 発展的な話題
#
# * 配列が空の場合の初期値はこれで良い？
# * RubyのArray#any?とは逆（得失は？）
# * forall?とは初期値が逆になる
#
def exists?(array)
  result = false

  array.each do |x|
    result = result || yield(x)
  end

  result
end

# 配列とブロックを受け取って、ブロックを評価した結果が全てtrueになる場合にtrueを返す。
#
# キーワード
#
# * all?
#
# 発展的な話題
#
# * 配列が空の場合の初期値はこれで良い？
# * exists?とは初期値が逆になる
#
def forall?(array)
  result = true

  array.each do |x|
    result = result && yield(x)
  end

  result
end
