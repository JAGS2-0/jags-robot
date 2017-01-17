class Robot

  def initialize
    x = 0
    y = 0
    direction = north
  end

  def turn
    # needs to change direction
  end

  def move
    # needs to increase or decrease x and y
  end

end


# start at x=0 and y=0, facing north
# could be told to move forward 1 unit, or to turn left or right by 90 degrees
# will be asked for your coordinates after you're done
# So move "LLFFLF" turns to face south, moves down 2 units, turns left (now facing east), and moves forward, ending at x=1 and y=-2.