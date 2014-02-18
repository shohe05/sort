# バブルソートを実装
# 右端から２つずつ並べ替えていく
# 左端は右に１つずつずれていく

class Array

  # バブルソート
  def bubble_sort

    # 左端 (インクリメント)
    1.upto(self.size-1) do |last|
      # 右端(左端と等しくなるまでデクリメント)
      (self.size-1).downto(last) do |start|
        # 隣り合う２つの要素を見比べて左側の要素が大きければswap!を呼ぶ
        self.swap!(start, start-1) if self[start] < self[start-1]
      end
    end

    self
  end

  # 配列の要素を2つ指定してそれらを入れ替える
  def swap!(idx1, idx2)
    temp = self[idx1]
    self[idx1] = self[idx2]
    self[idx2] = temp

    self
  end

end

# 実行
puts [5, 7, 3, 4, 2, 8, 1, 6].bubble_sort
