require "sudoku_maker/version"
require "sudoku_maker/maker"
require "sudoku_maker/utils/all_block_numbers"

module SudokuMaker
  class << self
    def make(num)
      ret = []
      if check(num)
        maker = Maker.new(num)
        ret = maker.exec
      else
        print "invalid args. only permited in #{AllBlockNumbers::BLOCK_NUMBERS}"
      end
      return ret
    end

    private

    # check args.
    def check(num)
      if AllBlockNumbers::BLOCK_NUMBERS.include?(num)
        return true
      else
        return false
      end
    end
  end
end
