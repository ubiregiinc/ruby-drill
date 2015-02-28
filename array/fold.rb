# 初期値initと配列とブロックを受け取って、次のような計算を行う。
#
#   fold(0, [1, 2, 3]) {|x,y| x + y }
#   => (((0 + 1) + 2) + 3)
#
# キーワード
# 
# * inject
#
def fold(init, array)
  result = init

  array.each do |x|
    result = yield(init, x)
  end

  result
end

# 配列とブロックを受け取って、配列にブロックを適用した結果を返す。
# foldを使って（eachを直接使わずに）実装する。
#
# キーワード
#
# * collect
# * map
#
# 発展的な話題
#
# * foldを使ってcollectを実装することはできるが、逆にcollectを使ってfoldを実装することはできるか？
#
def collect(array)
  fold([], array) {|a, x| a + [yield(x)] }
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
# * foldを使ってselectを実装することはできるが、逆にselectを使ってfoldを実装することはできるか？
#
def select(array)
  fold([], array) {|a, x| yield(x) ? a + [x] : a }
end

# 配列とブロックを受け取って、ブロックを評価した結果がtrueになるものがある場合にtrueを返す。
#
# キーワード
#
# * any?
#
def exists?(array)
  fold(false, array) {|x, y| x || yield(y) }
end

# 配列とブロックを受け取って、ブロックを評価した結果が全てtrueになる場合にtrueを返す。
#
# キーワード
#
# * all?
#
def forall?(array)
  fold(true, array) {|x, y| x && yield(y) }
end
