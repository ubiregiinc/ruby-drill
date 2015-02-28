# Arrayを使って、Hashのようなものを実装する。
#
# 配列の配列を使って、キー⇒値の構造を表現する。
# 1要素目にキー、2要素目に値を格納する。
#
# 例
# 
#   [[:a, 1], [:b, 2]]   <=>   { a: 1, b: 2 }
#
# キーワード
#
# * Association list
# * 連想配列
#

# 要素を取得する assoc_find メソッドを実装する。
#
# 例
#
#   assoc_find([[:a, 1], [:b, 2]], :a) => 1
#   assoc_find([[:a, 1], [:b, 2]], :b) => 1
#   assoc_find([[:a, 1], [:b, 2]], :c) => nil
#
def assoc_find(ass, key)
  ass.each do |(k, v)|
    return v if k == key
  end

  nil
end

# 要素を追加したArrayを作って返す assoc_add メソッドを実装する。
#
# 例
#
#   assoc_add([[:a, 1], [:b, 2]], :c, 3) => [[:a, 1], [:b, 2], [:c, 3]]
#
def assoc_add(ass, key, value)
  ass + [[key, value]]
end

# 要素を追加したArrayを作って返す assoc_add メソッドをもう一度、実装する。
#
# 例
#
#   assoc_add1([[:a, 1], [:b, 2]], :c, 3) => [[:c, 3], [:a, 1], [:b, 2]]
#
# 発展的な話題
#
# * assoc_addとassoc_add1は配列の末尾に新しい用を追加するか、先頭に追加するかが違います
#   この違いによって、 assoc_find の結果が変わるような、例はありますか？
#   （少し後のassoc_add2がヒント。）
#
def assoc_add1(ass, key, value)
  [[key, value]] + ass
end

# キーを指定して要素を取り除いたArrayを作って返す assoc_remove メソッドを実装する。
#
# 例
#
#   assoc_remove([[:a, 1], [:b, 2]], :b) => [[:a, 1]]
#   assoc_remove([[:a, 1], [:b, 2]], :c) => [[:a, 1], [:b, 2]]
#
# 発展的な話題
#
# * テストケースについて
#
def assoc_remove(ass, key, value)
  result = []

  ass.each do |(k, v)|
    unless k == key
      result << [k, v]
    end
  end

  result
end

# 要素を追加したArrayを作って返す assoc_add メソッドをもう一度、実装する。
#
# 例
#
#   assoc_add1([[:a, 1], [:b, 2], [:c, 0]], :c, 3) => [[:c, 3], [:a, 1], [:b, 2]]
#
def assoc_add2(ass, key, value)
  [[key, value]] + assoc_remove(ass, key)
end
