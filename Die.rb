class Die

  attr_accessor :faces
  attr_accessor :throwHash
  attr_accessor :throwCount


  def initialize
    @faces = [:north,:south,:east,:west];
    @throwHash = { :north => 0, :south => 0, :east => 0, :west =>0}
    @throwCount=0
  end

  public
  def throw
    face = [:north,:south,:east,:west].sample()
    @throwHash[face] += 1
    @throwCount+=1
    return face
  end

  public
  def stats
    @throwHash.each do |key, value|
      print "#{key} :"
      print "#{value*100/@throwCount}% "
    end
  end

end