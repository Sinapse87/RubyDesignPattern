class Grid

  attr_accessor :size
  attr_reader :homePoint


  def initialize (size)
    @size = size;
    @homePoint =  Point.new(size-1,size-1)
  end

  public
  def lies_outside? (point)
    return (point.x <0 || point.x>=size || point.y<0 || point.y>=size)
  end
end