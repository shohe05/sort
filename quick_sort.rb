# クイックソート
# 真ん中を基準値とする

class Array

  def quick_sort()
    # ソートが完了していたら終了
    return self if self == [] or self.zip(self[1..self.size-1] << self.max).map {|e| e[0] == e.min}.all?

    standard_value = self[self.size / 2]
    smaller = []
    middle = []
    bigger = []

    self.each do |e|

      if e < standard_value
        smaller << e
      elsif e == standard_value
        middle << e
      else
        bigger << e
      end

    end

    return smaller.quick_sort + middle + bigger.quick_sort
  end
end

# 実行
p [5, 1, 4, 3, 2, 99, 5, 3, 44, 2, 2].quick_sort
