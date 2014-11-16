require_relative 'Die'
require_relative 'Point'
require_relative 'Kangaroo'
require_relative 'Grid'

class Main
  begin
    puts ("Enter the dimension of the grid (>=1)")
    gridSize=gets.to_i
  end while gridSize<1
  grid = Grid.new(gridSize)
  skyppy = Kangaroo.new(grid)

  $throwCount=0;

  while (!skyppy.at_home?)
    skyppy.hop!
    $throwCount+=1
  end
  puts "WELCOME AT HOME SKYPPY"
  puts
  puts "Finished in #{skyppy.hopCount}  hops"
  puts "Die statistics:"
  puts "Total number of throws #{skyppy.die.throwCount}"
  puts skyppy.die.stats

end

