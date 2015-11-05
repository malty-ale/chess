class Position
  attr_accessor :occupant, :position, :name
  
  def initialize (position)
    @position = convert(position)
    @name = position
    @occupant = " "
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
    b.each {|i| a.each {|j| @position_names << i+j}}
    
    @positions = @position_names.map {|i| Position.new(i)}
  end
  
  def square(a)
    @positions[@position_names.index(a)]
  end
  
  def show_board
    puts  "1 " + (@positions[0 ... 8].map {|i| " " + i.occupant.to_s + " |"}).join("").chomp("|")
    puts  "2 " + (@positions[8 ...16].map {|i| " " + i.occupant.to_s + " |"}).join("").chomp("|")
    puts  "3 " + (@positions[16...24].map {|i| " " + i.occupant.to_s + " |"}).join("").chomp("|")
    puts  "4 " + (@positions[24...32].map {|i| " " + i.occupant.to_s + " |"}).join("").chomp("|")
    puts  "5 " + (@positions[32...40].map {|i| " " + i.occupant.to_s + " |"}).join("").chomp("|")
    puts  "6 " + (@positions[40...48].map {|i| " " + i.occupant.to_s + " |"}).join("").chomp("|")
    puts  "7 " + (@positions[48...56].map {|i| " " + i.occupant.to_s + " |"}).join("").chomp("|")
    puts  "8 " + (@positions[56...64].map {|i| " " + i.occupant.to_s + " |"}).join("").chomp("|")
    print "   A   B   C   D   E   F   G   H "
  end
end


class Game
  def start_game
    @board = Board.new
    @board.show_board
  end
end