class Point

  attr_accessor :x
  attr_accessor :y

  def initialize (x,y)
      @x=x;
      @y=y;
  end

  public
  def == (otherPoint)
    return (@x==otherPoint.x) && (@y==otherPoint.y)
  end
end