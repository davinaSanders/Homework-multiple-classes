class River
  attr_accessor(:name, :fish)
  def initialize(name, fish)
    @name = name
    @fish = fish
  end

  def remove_fish(name)
    @fish.delete(name)
  end

end
