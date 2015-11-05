class Position
  attr_accessor :occupant, :position
  
  def initialize (position)
    @position = convert(position)
  end
  
  def convert(position)
    array_position = position.split(//)
    array_position[0] = array_position[0].downcase.ord - "a".ord
    array_position[1] = array_position[1].to_i - 1
    array_position
  end
end