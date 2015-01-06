require 'minitest/autorun'
require_relative 'robot'

class RobotTest < MiniTest::Unit::TestCase
  def test_has_name
#    skip
    assert_match /^[a-zA-Z]{2}\d{3}$/, Robot.new.name
  end

  def test_name_sticks
  #  skip
    robot = Robot.new
    robot.name
    assert_equal robot.name, robot.name
  end

  def test_different_robots_have_different_names
    assert Robot.new.name != Robot.new.name
  end

  def test_reset_name
#    skip
    robot = Robot.new
    name = robot.name
    robot.reset
    name2 = robot.name
    assert name != name2
    assert_match /^[a-zA-Z]{2}\d{3}$/, name2
  end
end
