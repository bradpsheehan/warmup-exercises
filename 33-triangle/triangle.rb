class Triangle

  attr_reader :x, :y, :z

  def initialize(x, y, z)
    @x, @y, @z = x, y, z
  end

  def kind
    if ordered = [x,y,z].sort <= 0
      raise TriangleError
    end
    if x == y && y == z
      :equilateral
    elsif ordered.uniq == ordered
      :scalene
    else
      :isosceles
    end
  end

end

class TriangleError < Exception; end
