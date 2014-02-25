# マージソートを実装

# 山口さんに講評をいただいた
# return compare_and_mergeの行について
# "self."を省略しないと読みづらい
# compare_and_mergeは名前が悪い
# マージソートを知らない人からしたらどんなメソッドかよくわからない

class Array
  def merge_sort
    return self.compare_and_merge if self.size == 2

    ((self[0..size / 2 - 1].merge_sort).compare_and_merge + (self[size / 2..size - 1].merge_sort).compare_and_merge).compare_and_merge
  end

  protected

  # 昇順にマージ
  # TODO ループで書いているが、再帰で書き直す
  def compare_and_merge
    pivot = (size.to_f / 2.to_f).ceil

    # 中央値をもとに左右に分割
    left = self[0...pivot]
    right = self[pivot..size-1]

    # 左右の配列をマージ
    merged = []
    while left.size > 0 and right.size > 0
      case left[0] < right[0]
      when true then merged << left.shift
      else merged << right.shift
      end
    end

    case left.empty?
      when true then right[0...right.size].each {|e| merged << e}
      else left[0...left.size].each {|e| merged << e}
    end

    merged
  end

end

# 実行
p [8, 5, 4, 3, 7, 1, 2, 6].merge_sort
