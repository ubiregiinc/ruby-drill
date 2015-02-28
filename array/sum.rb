# 数値が格納された配列の、要素の合計を計算する。
# eachを使って、ローカル変数を更新しながら書く。
#
# キーワード
#
# * each
#
def sum(array)
  result = 0

  array.each do |x|
    result = result + x
  end

  result
end

# 数値が格納された配列の、要素を掛け合わせた値を計算する。
# eachを使って、ローカル変数を更新しながら書く。
#
# キーワード
#
# * each
#
# 発展的な話題
#
# * 配列が空の場合の値は1で良いか
#
def product(array)
  result = 1

  array.each do |x|
    result = result * x
  end

  result
end
