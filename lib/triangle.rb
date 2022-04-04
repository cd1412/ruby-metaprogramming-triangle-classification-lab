class Triangle
  # write code here

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3

    def kind
      if @s1 >= (@s2 + @s3) or @s2 >= (@s1 + @s3) or @s3 >= (@s1 + @s2) or @s1 <= 0 or @s2 <= 0 or @s3 <=0 or @s1 == nil or @s2 == nil or @s3 == nil
        raise TriangleError
      elsif @s1 == @s2 and @s1 == @s3
        return :equilateral
      elsif @s1 == @s2 or @s2 == @s3 or @s1 == @s3
        return :isosceles
      else
        return :scalene
      end
    end

  end

  class TriangleError < StandardError
  end

end
