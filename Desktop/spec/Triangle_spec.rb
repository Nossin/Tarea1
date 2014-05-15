class TriangleError < RuntimeError
end

 class Triangle
    
    attr_reader :a,:b,:c
    def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
    end

    def kind
      if equilateral() == true
         return true
      elsif isosceles() == true
         return true
      elsif violates_inequality?() == true
         return false
      elsif mpossible_length_side?() == true
         return false
    end

    private 

    def sides 
       
    end 
    
    def equilateral?
    if @a == @b && @b == @c && @c ==@a
      return true
    else
      return false
    end

    def violates_inequality?
    if ((@a + @b) > @c) || ((@a + @c) > @b) || ((@c + @b) > @a)
       return true
    else
       return false
    end
    
    def impossible_length_side?
    if @a >= 0 || @b >= 0 || @c >=0
      return true
    else 
      return false 
    end
 
    def isosceles?
     if @a == @b || @b == @c || @c == @a
      return true
      else 
      return false
    end 
end

Describe Triangle do

   Describe "#kind" do

   context "With Correct Params" do
   it "should return True" do
   testV = Triangle.new(3,3,3)
   expect(test.kind()).to eql(true)
    end
   end
   
   context "With Incorrect Params" do
   it "should throw an error" do
   testV = Triangle.new("lala",nil,nil)
   expect{test.kind()}.to raise_error
   end
  end
 end
   
end
