# マージソートを実装
class Array
  def merge_sort
    return ascending_merge if size == 2

    ((self[0..size / 2 - 1].merge_sort).ascending_merge + (self[size / 2..size - 1].merge_sort).ascending_merge).ascending_merge
  end

  # 昇順にマージ
  def ascending_merge
    # 中央値をとる
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
