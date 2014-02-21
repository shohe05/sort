# バブルソートの実装パート２

class Array

  def bubble_sort(index = self.size - 1)
    # 右端からソートを始めて、左端まで到達したらまた右端からスタート
    bubble_sort(self.size - 1) if index < 0

    # 左側の値が大きかったら
    self[index], self[index-1] = self[index-1], self[index] if self[index] < self[index-1]

    # ソートが終了していたら
    if self.zip((self[1, self.size-1] << self.max)).map {|i| i.min == i[0]}.all?
        return self
    # 終わってなければもう一度呼ぶ
    else
      self.bubble_sort(index - 1)
    end

  end

end

p [4, 2, 1, 6, 5, 3].bubble_sort
