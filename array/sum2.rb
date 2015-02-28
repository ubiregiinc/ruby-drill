# 数値が格納された配列の、要素の合計を計算する。
# injectを使って、1行で書く。
#
# キーワード
#
# * inject
#
# 発展的な話題
#
# * fold
# * 高階関数
#
def sum(array)
  array.inject(0) {|x, y| x + y }
end

# 数値が格納された配列の、要素を掛け合わせた値を計算する。
# injectを使って、1行で書く。
#
# キーワード
#
# * inject
#
# 発展的な話題
#
# * fold
# * 高階関数
# * arrayに0が含まれていた場合には残りを計算したくない
#
def product(array)
  array.inject(1) {|x, y| x * y }
end
