# クイックソート
# 真ん中を基準値とする

class Array
  def quick_sort
    # ソートが完了していたら終了
    return self if self.empty? or self.zip(self[1...self.size] << self.max).map {|e| e[0] == e.min}.all?

    pivot = self[self.size / 2]
    smallers = []
    equals = []
    biggers = []

    self.each do |e|

      case e <=> pivot
      when 1 then biggers << e
      when -1 then smallers << e
      else equals << e
      end

    end

    return smallers.quick_sort + equals + biggers.quick_sort
  end
end

# 実行
start_time = Time.now
p [0, 5, 9, 2, 10, 1, 3, 4, 7, 8, 6].quick_sort
end_time = Time.now

p (end_time - start_time).to_s + " second took."
