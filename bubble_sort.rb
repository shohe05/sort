class Array

  # バブルソート
  def bubble_sort

    # 左端
    1.upto(self.size-1) do |last|
      # 右端
      (self.size-1).downto(last) do |start|
        # 隣り合う２つの要素を見比べて左側の要素が大きければswap!を呼ぶ
        self.swap!(start, start-1) if self[start] < self[start-1]
      end
    end

    self
  end

  # 配列の要素を2つ指定して入れ替える
  def swap!(idx1, idx2)
    temp = self[idx1]
    self[idx1] = self[idx2]
    self[idx2] = temp

    self
  end

end

puts [5, 7, 3, 4, 2, 8, 1, 6].bubble_sort
