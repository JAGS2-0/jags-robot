class Robot
attr_reader :direction

  def initialize(x, y, direction)
    @x = x.to_i
    @y = y.to_i
    @direction = direction
  end

  def turn (point)
    turn = point.to_s
    if @direction == "north"
        if turn == "right"
          @direction = "east"
        else
          @direction = "west"
        end

    elsif @direction == "south"
      if turn == "right"
        @direction = "west"
      else
        @direction = "east"
      end

    elsif @direction == "east"
      if turn == "right"
        @direction = "south"
      else
        @direction = "north"
      end

    else @direction == "west"
      if turn == "right"
        @direction = "north"
      else
        @direction = "south"
      end
    end
  end


  def move(n)
    n.to_i
    if @direction == "north"
      @y += 1
    end

    if @direction == "south"
      @y -= 1
    end

    if @direction == "east"
      @x -= 1
    end

    if @direction == "west"
      @y -= 1
    end
  end

  def position
    puts "I'm at #{@x}, #{@y}"
  end

end

walley = Robot.new(0, 0, 'north')
walley.turn('left')
puts "I'm at direction #{walley.direction}"

# walley.turn('left')
# walley.move(1)
# walley.move(1)
# walley.turn('left')
# walley.move(1)
# walley.position

# start is 0,0, North
#   turn left
#   turn left
# position is 0,0, South
#   move forward
#   move forward
# position is 0,-2 South
#   turn left
# postiion is 0,-2 East
#   move forward
# position is 1,-2 facing East


# start at x=0 and y=0, facing north
# could be told to move forward 1 unit, or to turn left or right by 90 degrees
# will be asked for your coordinates after you're done
# So move "LLFFLF" turns to face south, moves down 2 units, turns left (now facing east), and moves forward, ending at x=1 and y=-2.