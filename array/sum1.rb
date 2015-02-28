# 数値が格納された配列の、要素の合計を計算する。
# 再帰呼び出しを使い、ローカル変数への代入を無くす。
#
# キーワード
#
# * 再帰呼び出し
#
# 発展的な話題
#
# * 末尾再帰
# * リスト
# * 高階関数
#
def sum(array)
  if array.size == 0
    0
  else
    array[0] + sum(array[1, array.size - 1])
  end
end

# 数値が格納された配列の、要素を掛け合わせた値を計算する。
# 再帰呼び出しを使い、ローカル変数への代入を無くす。
#
# キーワード
#
# * 再帰呼び出し
#
# 発展的な話題
#
# * 末尾再帰
# * リスト
# * 高階関数
#
def product(array)
  if array.size == 0
    0
  else
    array[0] * product(array[1, array.size - 1])
  end
end
