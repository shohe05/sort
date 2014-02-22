# マージソートを実装
class Array
  def merge_sort
    return minmax if self.size <= 2

    self[0..self.size / 2 - 1].merge_sort + self[self.size / 2..self.size - 1].merge_sort
  end
end

# 実行
p [3, 1, 2, 5, 4].merge_sort
