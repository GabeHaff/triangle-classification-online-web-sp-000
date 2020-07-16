class Triangle
  attr_accessor :side1, :side2, :side3, :sides
  
  
    
  def initialize(side1,side2,side3)
  @side1 = side1
  @side2 = side2
  @side3 = side3
  @sides = [side1, side2, side3].sort
  end 
  
  
  def kind 
     if sides.any? { |side| side <= 0 } || sides[0] + sides[1] <= sides[2] #|| sides.any? == nil
       raise TriangleError => error 
     elsif sides.uniq.length == 1
        :equilateral
      elsif sides.uniq.length == 2
        :isosceles
      else
        :scalene
      end
    end
   end
  
  class TriangleError < StandardError

end #class end 
