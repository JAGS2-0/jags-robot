class Robot

  def initialize(x, y, direction)
    @x = x.to_i
    @y = y.to_i
    @direction = direction
  end

  def turn (right, left)
    if @direction == north
        if right
          east
        else
          west
        end
    end

    if @direction == south
        if right
          west
        else
          east
        end
    end

    if @direction == east
      if right
        south
      else
        north
      end
    end

    if @direction == west
      if right
        north
      else
        south
      end
    end
  end

  def move
    # needs to increase or decrease x and y
  end

  def position
    # this will give you the position
  end

end


# start at x=0 and y=0, facing north
# could be told to move forward 1 unit, or to turn left or right by 90 degrees
# will be asked for your coordinates after you're done
# So move "LLFFLF" turns to face south, moves down 2 units, turns left (now facing east), and moves forward, ending at x=1 and y=-2.

start is 0,0, North
  turn left
  turn left
position is 0,0, South
  move forward
  move forward
position is 0,-2 South
  turn left
postiion is 0,-2 East
  move forward
position is 1,-2 facing East