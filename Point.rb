class Point

  attr_accessor :x
  attr_accessor :y

  def initialize (x,y)
    if (x>=0 && x<10 && y>=0 && y<10)
      @x=x;
      @y=y;
    else
      puts "Coordinates are wrong. The point will not be instantiate"
      return null
    end
  end

  public
  def == (otherPoint)
    if ((@x==otherPoint.x) && (@y==otherPoint.y))
      return true
    else
      return false
    end
  end
end