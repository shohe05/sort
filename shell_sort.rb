# シェルソートの実装
# 配列を分割する
# 要素がひとつになるまで分割
# 再帰で書く

require './bubble_sort'

class Array

  # シェルソート
  def shell_sort(devide_num = self.size/2)

    # 1個に分割されたら、終了
    return self if devide_num < 1

    1.upto(devide_num) do |idx|

      # 配列を分割する
      target_array = Array.new
      target_idxs = 0.upto(self.size-1).select {|i| (i-idx) % devide_num == 0}
      target_idxs.each {|i| target_array << self[i]}

      # 分割した配列をバブルソートして元の配列に突っ込む
      target_array.bubble_sort!
      target_idxs.each {|i| self[i] = target_array.shift}

    end

    self.shell_sort(devide_num/2)
  end

end

# 実行
p [5, 7, 3, 4, 2, 8, 1, 6].shell_sort
