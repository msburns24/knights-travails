class Square

  attr_accessor :row, :col, :path, :moves

  def initialize(row, col, path = [])
  
    @row = row
    @col = col
    @moves = []
    @path = path
  end

  def valid?
    return false if (row > 7 || col > 7)
    return false if (row < 0 || col < 0)
    return false if path.include?([row, col])
    add_to_path
    return true
  end

  def add_to_path
    @path = path << [row, col]
  end

  def same_as?(square)
    return false unless square.row == @row
    return false unless square.col == @col
    return true
  end

  def to_s
    output_str = "["
    output_str += @row.to_s
    output_str += ", "
    output_str += @col.to_s
    output_str += "]"
    return output_str
  end
end