class Die

  attr_accessor :faces
  attr_accessor :throwStat
  attr_accessor :throwCount


  def initialize
    @faces = [:north,:south,:east,:west]
    @throwStat = { :north => 0, :south => 0, :east => 0, :west =>0}
    @throwCount=0
  end

  public
  def throw
    face = @faces.sample()
    @throwStat[face] += 1
    @throwCount+=1
    return face
  end

  public
  def stats
    @throwStat.each do |key, value|
      print "#{key} :"
      print "#{(value*100/@throwCount)}% "
    end
  end

end