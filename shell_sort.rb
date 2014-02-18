# シェルソートの実装
# 配列を分割する
# 要素がひとつになるまで分割

require './bubble_sort'

class Array

  # シェルソート
  def shell_sort

    # 何個ずつに分割するか
    devide_width = self.size/2

    # ２つに分割
    0.upto(self.size/2-1) do |idx|
      self[idx], self[idx+devide_width] = [self[idx], self[idx+devide_width]].bubble_sort
    end

    p self

    # 4つに分割
    devide_width /= 2

    0.upto(self.size/4-1) do |idx|
      self[idx], self[idx+devide_width], self[idx+devide_width+devide_width], self[idx+devide_width+devide_width+devide_width] = [self[idx], self[idx+devide_width], self[idx+devide_width+devide_width], self[idx+devide_width+devide_width+devide_width]].bubble_sort
    end

    p self

    p self.bubble_sort
  end

end

# 実行
[5, 7, 3, 4, 2, 8, 1, 6].shell_sort
