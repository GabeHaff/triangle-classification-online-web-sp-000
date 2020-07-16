class Triangle
  attr_accessor :side1, :side2, :side3, :sides
  
  class TriangleError < StandardError
    
  def initialize(side1,side2,side3)
  @side1 = side1
  @side2 = side2
  @side3 = side3
  @sides = [side1, side2, side3]
  end 
  
  
  def kind 
     if sides.any? { |side| side <= 0 } || sides.any? == nil
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
  
  
  
end #class end 
