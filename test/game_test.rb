require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/game'

class GameTest < Minitest::Test
  def setup
    @mega_millions = Game.new('Mega Millions', 5, true)
  end

  def test_it_exists
    assert_instance_of Game, @mega_millions
  end

  def test_it_has_attributes
    assert_equal "Mega Millions", @mega_millions.name
    assert_equal 5, @mega_millions.cost
    assert @mega_millions.national_drawing?

    pick_4 = Game.new('Pick 4', 2)

    assert_equal false, pick_4.national_drawing?
  end
end