class Flyweight
  def initialize(state)
    @state = state
  end

  def state_method; end
end

class State
  def initialize(color)
    @color = color
  end
end