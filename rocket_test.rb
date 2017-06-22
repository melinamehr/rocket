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

  def test_lift_off_with_rocket_on_ground
    assert @rocket.lift_off == true
    assert @rocket.flying? == true
  end

  def test_lift_off_with_rocket_flying
    @rocket.lift_off
    refute(@rocket.lift_off)
    assert @rocket.flying?
  end

  def test_flying_rocket_can_land
    @rocket = Rocket.new(:flying => true)
    assert @rocket.land == true
  end

  def test_flying_rocket_becomes_not_flying_after_land
    @rocket = Rocket.new(:flying => true)
    @rocket.land
    refute @rocket.flying?
    # or assert @rocket.flying? == false
  end

  def test_grounded_rocket_cant_land
    assert @rocket.flying? == false
    assert @rocket.land == false
    # refute @rocket.land
  end

  # assert(parameter)   <---- blow up unless parameter is true
  # refute(parameter)    <----- blow up unless parameter is false

  def test_if_status_flying_rocket_flying
    @rocket = Rocket.new(:flying => true)
    assert_equal @rocket.status, "Rocket #{@rocket.name} is flying through the sky!"
  end

  def test_if_status_not_flying_rocket_not_flying
    @rocket.flying?
    assert_equal @rocket.status, "Rocket #{@rocket.name} is ready for lift off!"
  end

end
