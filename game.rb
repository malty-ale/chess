class Position
  attr_accessor :occupant, :position, :name
  
  def initialize (position)
    @position = convert(position)
    @name = position
  end
  
  def convert(position)
    array_position = position.split(//)
    array_position[0] = array_position[0].downcase.ord - "a".ord
    array_position[1] = array_position[1].to_i - 1
    array_position
  end
end

class Board
  def initialize
    create_board
  end
  
  def create_board
    a = ["a","b","c","d","e","f","g","h"]
    b = ["1","2","3","4","5","6","7","8"]
    @position_names = []
    a.each {|i| b.each {|j| @position_names << i+j}}
    
    @positions = @position_names.map {|i| Position.new(i)}
  end
  
  def square(a)
    @positions[@position_names.index(a)]
  end
end


class Game
  def start_game
    @board = Board.new
  end
end