require_relative 'Die'
require_relative 'Point'
require_relative 'Grid'


class Kangaroo

  attr_accessor :position
  attr_accessor :die
  attr_accessor :grid
  attr_accessor :hopCount

  def initialize(grid)
    @position=Point.new(0, 0)
    @die=Die.new
    @grid=grid
    @hopCount=0
  end

  public
  def hop!
    direction = @die.throw
    @nextPosition = Point.new(@position.x,@position.y)
    case direction
      when :north
        @nextPosition.y+=1
      when :south
         @nextPosition.y-=1
      when :east
         @nextPosition.x+=1
      when :west
         @nextPosition.x-=1
    end
    if (grid.lies_outside?(@nextPosition))
      puts "Oops, hit the boundary (#{@nextPosition.x},#{@nextPosition.y})"
    else
      @position=@nextPosition
      @hopCount+=1
      puts "Hoped to (#{position.x},#{position.y})"
    end
  end


  public
  def at_home?
    return @position==@grid.homePoint
  end

  private
  def move! (direction)
    case direction
      when :north
        position.y+=1
      when :south
       position.y-=1
      when :east
        position.x+=1
      else
        position.x-=1
    end
  end
end