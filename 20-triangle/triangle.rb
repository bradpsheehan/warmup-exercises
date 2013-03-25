def triangle(x, y, z)

  raise TriangleError if (x + y + z == 0)
  raise TriangleError if [x, y, z].any?{|side| side < 0}
  raise TriangleError if !possible_triangle?(x, y, z)
  
  if x == y && y == z
    :equilateral
  elsif x != y && x != z && y != z
    :scalene
  else
    :isosceles
  end
end

def possible_triangle?(x, y, z)
  ordered = [x, y, z].sort
  hypotenuse = ordered.last
  if (ordered[0] + ordered[1]) > hypotenuse
    true
  else
    false
  end
end

class TriangleError < Exception
end
