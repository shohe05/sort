# バブルソートを実装
# 右端から左端に向かって２つずつ並べ替えていく
# 左端まで行くたびに左端の値が決まり、左端が一個右にずれる

# 実装後の反省: 可読性が低い。バブルソートを知っている人なら読めると信じているが。
# TODO: 可読性を上げる.last, startという変数名はわかりにくいと思う。

# 山口さんに講評をもらう
# - lastとstart
# - 比較する２つの変数がstartとstart-1では、なにしてるのかわからない。名前が悪い
# - 左に移動していく変数がbackっておかしい
# - swapはいらないしかも書き方がrubyっぽくない

# TODO: backを違う名前にする

class Array

  # バブルソート
  def bubble_sort

    # 左端 (インクリメント)
    1.upto(self.size-1) do |front|

      # 右端(左端と等しくなるまでデクリメント)
      (self.size-1).downto(front) do |compare_place|
        # 比較する隣り合う2つの要素
        right_elem, left_elem = compare_place, compare_place-1

        # 隣り合う２つの要素を見比べて左側の要素が小さくなるようにする
        self[left_elem], self[right_elem] = [self[left_elem], self[right_elem]].minmax
      end
    end

    self
  end

end

# 実行
# p [5, 7, 3, 4, 2, 8, 1, 6].bubble_sort
