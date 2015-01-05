
module SudokuMaker
  class Maker
    def initialize(num)
      @block_num = num
      @decision_num = Math.sqrt(num).to_i
    end

    def exec
      s = make_source()
      s = shuffle_block_row(s)
      s = switch_row_column(s)
      s = shuffle_block_row(s)

      # format to array
      ret = []
      s.each do |arr|
        arr.each do |v|
          ret = ret + v
        end
      end

      return ret
    end

    private

    def make_source()
      arr = []
      for i in 1..@block_num do
        arr.push(i)
      end
      arr = arr.shuffle
      d = []
      for i in 0..@block_num - 1 do
        num = i % @decision_num
        copied = arr.clone
        # initialize
        d[num] = [] unless d[num]
        d[num].push(copied)
        arr.push(arr.shift)
      end

      return d
    end

    def shuffle_block_row(indata)
      # block shuffle
      indata = indata.shuffle
      # row shuffle in each block
      for i in 0..@decision_num - 1 do
        indata[i] = indata[i].shuffle
      end

      return indata
    end

    def switch_row_column(indata)
      # format indata to array
      tmp = []
      indata.each do |arr|
        arr.each do |v|
          tmp = tmp + v
        end
      end

      # switch row and column
      cnt = 1
      d = []
      tmp_d = []
      for i in 0..@block_num - 1 do
        j_arr = []
        for j in 0..@block_num - 1 do
          j_arr.push(tmp[i + j * @block_num])
        end
        tmp_d.push(j_arr)
        if (cnt % @decision_num == 0) 
          d.push (tmp_d)
          tmp_d = []
        end
        cnt = cnt + 1
      end
      
      return d
    end
  end
end
