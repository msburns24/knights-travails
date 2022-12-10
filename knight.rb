class Knight

  def initialize
    @changes = [
      [-2, -1],
      [-1, -2],
      [1, -2],
      [2, -1],
      [2, 1],
      [1, 2],
      [-1, 2],
      [-2, 1]
    ]
  end

  def get_moves(square)
    move_list = []

    @changes.each do |row_change, col_change|
      new_square = Square.new(
        square.row + row_change,
        square.col + col_change,
        Array.new(square.path)
      )
      if new_square.valid?
        move_list << new_square
      end
    end

    square.moves = move_list
  end

  def find_path(start_sq, final_sq, queue = [])
    return start_sq.path if start_sq.same_as?(final_sq)

    get_moves(start_sq)
    start_sq.moves.each do |move|
      queue << move
    end

    find_path(queue.shift, final_sq, queue)
  end

end