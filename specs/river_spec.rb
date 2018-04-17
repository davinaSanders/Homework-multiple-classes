require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../fish.rb")
require_relative("../river.rb")

class RiverTest < MiniTest::Test
  def setup
    fish = ["Pirhana", "Angel", "Salmon"]
    @river = River.new("Amazon", fish)
  end

  def test_remove_fish
    @river.remove_fish("Angel")
    assert_equal(2, @river.fish().count())
  end


  def test_fish_left_in_river
    @river.remove_fish("Angel")
    assert_equal(["Pirhana", "Salmon"], @river.fish)
  end


end
