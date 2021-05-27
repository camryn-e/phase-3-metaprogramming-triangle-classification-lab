class Triangle

  attr_accessor :len_1, :len_2, :len_3
  # attr_reader :equilateral, :isosceles, :scalene
  # attr_accessor :len_arr


  def initialize(len_1, len_2, len_3)
    @len_1 = len_1 
    @len_2 = len_2
    @len_3 = len_3
  end

  def kind

    max = [@len_1, @len_2, @len_3].max

    if @len_1 <= 0 || @len_2 <= 0 || @len_3 <= 0
      raise TriangleError
    elsif (@len_1 < max && @len_3 < max && @len_1 + @len_3 <= max) || (@len_2 < max && @len_3 < max && @len_2 + @len_3 <= max) || (@len_1 < max && @len_2 < max && @len_1 + @len_2 <= max)
      raise TriangleError
    elsif @len_1 == @len_2 && @len_2 == @len_3
      :equilateral
    elsif self.len_1 == self.len_2 || self.len_2 == self.len_3 || self.len_1 == self.len_3
      :isosceles
    elsif self.len_1 != self.len_2 && self.len_2 != self.len_3
      :scalene
    end

  end

  class TriangleError < StandardError
  end

end
