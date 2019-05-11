class Player
  attr_reader :name, :family, :point
  def initialize(name, family , point=60)
    @name = name
    @family = family
    @point = point
  end
end
