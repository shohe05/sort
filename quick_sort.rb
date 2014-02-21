# クイックソート
# 真ん中を基準値とする

class Array

  def quick_sort()
    # ソートが完了していたら終了
    return self if self == [] or self.zip(self[1..self.size-1] << self.max).map {|e| e[0] == e.min}.all?

    standard_value = self[self.size / 2]
    smallers = []
    equals = []
    biggers = []

    self.each do |e|

      if e < standard_value
        smallers << e
      elsif e == standard_value
        equals << e
      else
        biggers << e
      end

    end

    return smallers.quick_sort + equals + biggers.quick_sort
  end
end

# 実行
p [5, 1, 4, 3, 2, 99, 5, 3, 44, 2, 2].quick_sort
