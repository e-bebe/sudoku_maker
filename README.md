# SudokuMaker

SudokuMaker which can make sudoku 4x4, 9x9, 16x16, …, 100x100

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sudoku_maker'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sudoku_maker

## Usage

SudokuMaker.make [Int](4, 9, 16, 25, 36, 49, 64, 81, 100)
args is only permited in (4, 9, 16, 25, 36, 49, 64, 81, 100)

return value is array
e.g. args=>4 #=> [1, 3, 4, 2, 4, 2, 3, 1, 2, 4, 1, 3, 3, 1, 2, 4]

means
-----------------
| 1 | 3 | 4 | 2 |
-----------------
| 4 | 2 | 3 | 1 |
-----------------
| 2 | 4 | 1 | 3 |
-----------------
| 3 | 1 | 2 | 4 |
-----------------

## Contributing

1. Fork it ( https://github.com/[my-github-username]/sudoku_maker/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
