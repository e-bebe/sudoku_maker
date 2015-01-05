# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sudoku_maker/version'

Gem::Specification.new do |spec|
  spec.name          = "sudoku_maker"
  spec.version       = SudokuMaker::VERSION
  spec.authors       = ["yokkora"]
  spec.email         = ["mail@yokkora.info"]
  spec.summary       = %q{Sudoku maker which can make 4x4, 9x9, 16x16, …, 100x100}
  spec.description   = %q{Sudoku maker which can make 4x4, 9x9, 16x16, …, 100x100}
  spec.homepage      = "https://github.com/hooor/sudoku_maker"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
end
