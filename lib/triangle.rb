class Triangle
  # write code here
attr_accessor :a, :b, :c ,:type

   def initialize(a,b,c)
      @a = a
      @b = b
      @c = c

    
   end

   def kind

    if a + b <= c || b + c <= a || a + c <= b
        begin 
          raise TriangleError, "Does not satisfy triangle inequality"
        end
      elsif [a, b, c].min <= 0
        begin
          raise TrianguleError,"Sides must be greater than 0"
        end   

    elsif a == b && b == c
     return @@type = :equilateral
    elsif 
      a==b || b==c || a==c
      return @@type =:isosceles
    else a!=b && b!=c
      return  @@type = :scalene 
    end
   end

   class TriangleError < StandardError
    end
end
