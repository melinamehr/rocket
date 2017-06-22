require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test

  def setup
    @rocket = Rocket.new
  end
# ------------------------#

  def test_new_name
    @rocket.name=("aries i")
    assert @rocket.name == "aries i"
  end

#testing the negative
  def test_new_name_old
    @rocket.name=("hello")
    refute @rocket.name == "hello1"
  end

  def test_new_colour
    @rocket.colour=("red")
    assert @rocket.colour == "red"
  end

  #testing the negative
  def test_new_colour_old
    @rocket.colour=(1)
    refute @rocket.colour == "red"
  end

  def test_lift_off
    @rocket.flying? == false
    assert @rocket.flying? == false
  end

  def test_lift_off_other
    @rocket.flying? == true
    assert @rocket.flying? == false
  end

  # if the rocket is flying it's not lifting off = flying = true
  #   if the rocket isn't flying it is lifting off = flying = false

  def test_status
    






end
