require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../fish.rb")
require_relative("../river.rb")

class BearTest < MiniTest::Test
  def setup
    @bear = Bear.new("Yogi", [])
    fish = ["Pirhana", "Angel", "Salmon"]
    @river1 = River.new("Amazon", fish)
  end

  def test_roar
    assert_equal("roar", @bear.roar())
  end

  def test_take_a_fish
    @bear.eat_a_fish("Angel")
    assert_equal(1, @bear.stomach().count())
  end

  def test_move_a_fish
    @bear.move_a_fish(@river1, "Angel")
    assert_equal(2, @river1.fish().count())
  end

  def test_fish_in_stomach
    @bear.move_a_fish(@river1, "Angel")
    assert_equal(["Angel"], @bear.stomach())
  end

  # def test_move_a_fish
  #   @bear.move_fish("Angel")
  #   assert_equal(1, @bear.stomach().count())
  # end

end
