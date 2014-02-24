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

  def quicksort(left = 0, right = self.size - 1)
    return self if left >= right

    # 枢軸
    pivot = self[((left + right).to_f / 2.to_f).ceil]
    i = left
    j = right

    loop do
      # 左側から見て枢軸より大きい値、右から見て枢軸より小さい値を見つける
      i += 1 while self[i] < pivot
      j -= 1 while self[j] > pivot

      # 左側と右側がぶつかったら抜ける
      break if i >= j

      self[i], self[j] = self[j], self[i]
      i += 1
      j -= 1
    end

    quicksort(left, i - 1)
    quicksort(i, right)
  end
end

# 実行
start_time = Time.now
p [3, 5, 4, 2, 1].quicksort
end_time = Time.now

p "#{end_time - start_time} second"
