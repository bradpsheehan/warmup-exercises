class Matrix
  attr_reader :rows

  def initialize(input)
    @rows = input.split("\n").map { |row| row.split(' ').map { |char| char.to_i } }
  end

  def columns
    width = rows.length - 1
    col = []

    (0..width).each do |i|
      col[i] = rows.map do |row|
        row[i]
      end
    end
    col
  end

  def saddle_points
    max_in_row && min_in_col
  end

  def max_in_row
    rows.map do |row|
      row.map { |x| row.max == x ? 1 : 0 }
    end
  end

  def min_in_col
    columns.map do |col|
      col.map { |y| col.min == y ? 1 : 0 }
    end
  end

end
