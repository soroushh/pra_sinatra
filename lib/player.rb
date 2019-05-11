class Player
  attr_reader :name, :family, :point
  def initialize(name, family , point=60)
    @name = name
    @family = family
    @point = point
  end

  def get_attacked
    @point -= 10
  end
end
