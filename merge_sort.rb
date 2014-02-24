# マージソートを実装
require "./bubble_sort"

class Array
  def merge_sort(merge = false)
    return bubble_sort! if size <= 2

    ((self[0..size / 2 - 1].merge_sort).bubble_sort! + (self[size / 2..size - 1].merge_sort).bubble_sort!).bubble_sort!
  end
end

# 実行
p [5, 8, 4, 3, 7, 1, 2, 6].merge_sort
