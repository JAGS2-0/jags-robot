require 'rspec'

require_relative 'robot'

describe Robot do
  it 'starts at the start' do
    rover = Robot.new(0, 0, 'north')

    expect(rover.direction).to eq 'north'
    expect(rover.x).to eq 0
    expect(rover.y).to eq 0
  end

  it 'can turn right' do
    rover = Robot.new(0, 0, 'south')

    rover.turn('right')

    expect(rover.direction).to eq 'west'
  end

  it 'can turn left' do
    rover = Robot.new(0, 0, 'south')

    rover.turn('left')

    expect(rover.direction).to eq 'east'
  end

  it 'can move forward' do
    rover = Robot.new(0, 0, 'north')
    rover.move(1)

    expect(rover.x).to eq 0
    expect(rover.y).to eq 1
  end

  it 'can turn around' do
    rover = Robot.new(0, 0, 'north')
    4.times { rover.turn('left') }
    expect(rover.direction).to eq 'north'
  end

  skip 'can follow directions' do
    rover = Robot.new
    rover.follow('LF')

    expect(rover.heading).to eq :w
    expect(rover.x).to eq -1
    expect(rover.y).to eq 0
  end

  skip 'can follow long directions' do
    rover = Robot.new
    rover.follow('FRFFLFRRRRF')

    expect(rover.heading).to eq :n
    expect(rover.x).to eq 2
    expect(rover.y).to eq 3
  end
end