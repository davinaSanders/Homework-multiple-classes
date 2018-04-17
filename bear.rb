class Bear
  attr_accessor(:name, :stomach)
  def initialize(name, stomach)
    @name = name
    @stomach = stomach
    @food_count = 0
  end

  def roar
    return "roar"
  end

  def eat_a_fish(name)
    @stomach.push(name)
  end

  def move_a_fish(river, name)
    fish = river.remove_fish(name)
    eat_a_fish(fish)
  end


  # def move_fish(name)
  #   remove_fish(name)
  #   eat_a_fish(name)
  # end

end
