require_relative 'square.rb'
require_relative 'knight.rb'

system 'cls'

my_piece = Knight.new()

my_start = Square.new(3, 3)
my_end = Square.new(4, 3)

p my_piece.find_path(my_start, my_end)