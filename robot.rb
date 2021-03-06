class Robot
attr_reader :direction
attr_reader :x
attr_reader :y

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
      @x += 1
    end

    if @direction == "west"
      @y -= 1
    end
  end

  def position
    puts "I'm at #{@x}, #{@y}"
  end

  def follow(coordinates) #'LLMM'
    directions = coordinates.chars # [l, l, m, m,]
    directions.map do |char|
      if char == 'L'
        'left'
      elsif char == 'R'
        'right'
      else char == 'M'
        'move'
      end


    # convert string 'LF' to 'left', 'Move(1)'

    # l = left, r = right, m = move(1)

  end

end

# walley = Robot.new(0, 0, 'north')
# walley.turn('left')
# puts "I'm at direction #{walley.direction}"
#
# walley.turn('left')
# puts "I'm at direction #{walley.direction}"
#
# walley.move(1)
# puts "#{walley.position}"
#
# walley.move(1)
# puts "#{walley.position}"
#
# walley.turn('left')
# puts "I'm at direction #{walley.direction}"
#
# walley.move(1)
# puts "#{walley.position}"

