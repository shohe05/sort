# クイックソート
# 真ん中を基準値とする

class Array
  def quick_sort
    # ソートが完了していたら終了
    return self if empty? or zip(self[1...size] << max).map {|e| e[0] == e.min}.all?

    # 枢軸
    pivot = (min + max) / 2

    smallers, biggers = partition {|e| e < pivot}

    smallers.quick_sort + biggers.quick_sort
  end
end

# 実行
p [3, 5, 4, 2, 1].quicksort
