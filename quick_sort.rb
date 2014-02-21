# クイックソート
# 真ん中を基準値とする

class Array

  def quick_sort()
    return self if self == [] or self.zip(self[1..self.size-1] << self.max).map {|e| e[0] == e.min}.all?

    standard_value = self[self.size / 2]
    middle = []
    smaller = []
    bigger = []

    self.each do |e|
      # 基準値より小さかったら先頭に追加、大きかったら末尾に追加
      if e > standard_value
        bigger << e
        p "bigger: #{e}"
      elsif e < standard_value
        smaller << e
        p "smaller: #{e}"
      else
        middle << e

      end

    end
    p "self: #{self}"
    p "smaller #{smaller}"
    p "bigger: #{bigger}"

    return smaller.quick_sort + middle + bigger.quick_sort
  end
end

# 実行
p [5, 1, 4, 3, 2, 99, 5, 3, 44, 2, 2].quick_sort
